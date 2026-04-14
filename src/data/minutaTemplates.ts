/**
 * minutaTemplates.ts
 * Templates de minutas são gerenciados no Supabase (tabela minuta_templates).
 * Esta camada fornece a função assíncrona de busca e os tipos compartilhados.
 */

import { supabase } from '../lib/supabase';

export interface MinutaTemplatePathStep {
  stepKey: string;
  optionText: string;
}

export interface MinutaTemplate {
  id: string;
  title: string;
  /** Apenas o corpo da decisão (sem cabeçalho nem rodapé). */
  text: string;
  sourceFiles: readonly string[];
}

export const SEM_REFERENCIA = 'AINDA SEM REFERENCIA DE MINUTAS';

export function semReferencia(id: string): MinutaTemplate {
  return {
    id,
    title: 'Sem referência disponível',
    text: SEM_REFERENCIA,
    sourceFiles: [],
  };
}

/**
 * Busca o template no Supabase pelo stepKey e optionText do último passo.
 * RE não tem templates — retorna semReferencia imediatamente.
 * Se não encontrar no banco, retorna semReferencia.
 */
export async function fetchMinutaTemplate(
  path: MinutaTemplatePathStep[]
): Promise<MinutaTemplate> {
  const id = path.map(s => s.stepKey + ':' + s.optionText).join(' > ');
  const isRE = path[0]?.optionText === 'Recurso Extraordinário (RE)';
  if (isRE) return semReferencia(id);

  const last = path[path.length - 1];
  if (!last) return semReferencia(id);

  const { data, error } = await supabase
    .from('minuta_templates')
    .select('id, title, template_text, source_files')
    .eq('step_key', last.stepKey)
    .eq('option_text', last.optionText)
    .single();

  if (error || !data) return semReferencia(id);

  return {
    id: data.id,
    title: data.title,
    text: data.template_text,
    sourceFiles: data.source_files ?? [],
  };
}
