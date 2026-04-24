-- =============================================================================
-- VALIDAÇÃO PÓS-MIGRAÇÃO CANÔNICA - MINUTA_TEMPLATES
-- Data: 2026-04-24
-- Objetivo: validar integridade após execução de migrate_minuta_templates_canonical.sql
-- =============================================================================

DO $$
DECLARE
  expected_rows INTEGER := 77;
  actual_rows INTEGER;
  invalid_core_rows INTEGER;
  invalid_source_rows INTEGER;
  duplicate_keys INTEGER;
  missing_required_ids INTEGER;
BEGIN
  SELECT COUNT(*) INTO actual_rows FROM minuta_templates;

  IF actual_rows <> expected_rows THEN
    RAISE EXCEPTION
      'Falha: quantidade de linhas divergente. Esperado=%, Encontrado=%',
      expected_rows, actual_rows;
  END IF;

  SELECT COUNT(*) INTO invalid_core_rows
  FROM minuta_templates
  WHERE COALESCE(BTRIM(step_key), '') = ''
     OR COALESCE(BTRIM(option_text), '') = ''
     OR COALESCE(BTRIM(title), '') = ''
     OR COALESCE(BTRIM(template_text), '') = '';

  IF invalid_core_rows > 0 THEN
    RAISE EXCEPTION
      'Falha: % linhas com campos textuais obrigatórios vazios/nulos.',
      invalid_core_rows;
  END IF;

  SELECT COUNT(*) INTO invalid_source_rows
  FROM minuta_templates
  WHERE source_files IS NULL
     OR COALESCE(array_length(source_files, 1), 0) = 0;

  IF invalid_source_rows > 0 THEN
    RAISE EXCEPTION
      'Falha: % linhas sem source_files.',
      invalid_source_rows;
  END IF;

  SELECT COUNT(*) INTO duplicate_keys
  FROM (
    SELECT step_key, option_text
    FROM minuta_templates
    GROUP BY step_key, option_text
    HAVING COUNT(*) > 1
  ) d;

  IF duplicate_keys > 0 THEN
    RAISE EXCEPTION
      'Falha: % chaves duplicadas (step_key, option_text).',
      duplicate_keys;
  END IF;

  WITH required_ids(id) AS (
    VALUES
      ('596190'), ('596193'), ('596212'), ('596222'), ('596237'),
      ('596249'), ('596260'), ('596274'), ('596347'), ('596358'),
      ('596359'), ('596361'), ('596757'), ('596759'), ('596798'),
      ('598979'), ('607949'), ('615885'), ('627206'), ('628802'),
      ('646311'), ('670304'), ('670588'), ('676727'), ('676940')
  ),
  present_ids AS (
    SELECT DISTINCT substring(src FROM '([0-9]{6})') AS id
    FROM minuta_templates mt
    CROSS JOIN LATERAL unnest(mt.source_files) AS src
    WHERE substring(src FROM '([0-9]{6})') IS NOT NULL
  )
  SELECT COUNT(*)
    INTO missing_required_ids
  FROM required_ids r
  LEFT JOIN present_ids p ON p.id = r.id
  WHERE p.id IS NULL;

  IF missing_required_ids > 0 THEN
    RAISE EXCEPTION
      'Falha: % IDs obrigatórios do DOCX sem cobertura em source_files.',
      missing_required_ids;
  END IF;

  RAISE NOTICE 'Validação concluída com sucesso: base canônica íntegra.';
END $$;

-- Resumo rápido para conferência visual
SELECT COUNT(*) AS total_templates FROM minuta_templates;

SELECT step_key, COUNT(*) AS total
FROM minuta_templates
GROUP BY step_key
ORDER BY step_key;

-- Deve retornar zero linhas
WITH required_ids(id) AS (
  VALUES
    ('596190'), ('596193'), ('596212'), ('596222'), ('596237'),
    ('596249'), ('596260'), ('596274'), ('596347'), ('596358'),
    ('596359'), ('596361'), ('596757'), ('596759'), ('596798'),
    ('598979'), ('607949'), ('615885'), ('627206'), ('628802'),
    ('646311'), ('670304'), ('670588'), ('676727'), ('676940')
),
present_ids AS (
  SELECT DISTINCT substring(src FROM '([0-9]{6})') AS id
  FROM minuta_templates mt
  CROSS JOIN LATERAL unnest(mt.source_files) AS src
  WHERE substring(src FROM '([0-9]{6})') IS NOT NULL
)
SELECT r.id AS missing_required_id
FROM required_ids r
LEFT JOIN present_ids p ON p.id = r.id
WHERE p.id IS NULL
ORDER BY r.id;

