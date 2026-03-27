import React, { useEffect, useId, useRef, useState } from 'react';
import {
    ArrowLeft,
    ArrowRight,
    Bell,
    ChevronDown,
    ChevronUp,
    CircleAlert,
    Copy,
    LogOut,
    Minus,
    Moon,
    RotateCcw,
    Sun,
    User,
    X
} from 'lucide-react';

const renderIcon = (icon: string, className = 'h-4 w-4') => {
    const iconProps = { className, 'aria-hidden': true as const };

    switch (icon) {
        case 'arrow_back':
            return <ArrowLeft {...iconProps} />;
        case 'arrow_forward':
            return <ArrowRight {...iconProps} />;
        case 'content_copy':
            return <Copy {...iconProps} />;
        case 'refresh':
            return <RotateCcw {...iconProps} />;
        case 'notifications':
            return <Bell {...iconProps} />;
        case 'light_mode':
            return <Sun {...iconProps} />;
        case 'dark_mode':
            return <Moon {...iconProps} />;
        case 'person':
            return <User {...iconProps} />;
        case 'logout':
            return <LogOut {...iconProps} />;
        case 'expand_less':
            return <ChevronUp {...iconProps} />;
        case 'expand_more':
            return <ChevronDown {...iconProps} />;
        case 'linear_scale':
            return <Minus {...iconProps} />;
        case 'close':
            return <X {...iconProps} />;
        case 'error':
            return <CircleAlert {...iconProps} />;
        default:
            return null;
    }
};

export const TJPRCard = ({ title, subtitle, children, actions, className = '', icon, ...props }: any) => {
    return (
        <div className={`tjpr-card ${className}`} {...props}>
            {(title || subtitle || icon) && (
                <div className="px-6 py-4 border-b border-gray-200 dark:border-gray-700">
                    <div className="flex items-center gap-3">
                        {icon && (
                            <span className="text-tjpr-navy-700 dark:text-tjpr-navy-500">
                                {renderIcon(icon, 'h-5 w-5')}
                            </span>
                        )}
                        <div className="flex-1">
                            {title && (
                                <h3 className="text-lg font-semibold text-gray-900 dark:text-white">
                                    {title}
                                </h3>
                            )}
                            {subtitle && (
                                <p className="text-sm text-tjpr-gray-700 dark:text-gray-300 mt-1">
                                    {subtitle}
                                </p>
                            )}
                        </div>
                    </div>
                </div>
            )}
            <div className="p-6">
                {children}
            </div>
            {actions && (
                <div className="px-6 py-4 bg-gray-50 dark:bg-gray-900 border-t border-gray-200 dark:border-gray-700 flex items-center justify-end gap-3">
                    {actions}
                </div>
            )}
        </div>
    );
};

export const TJPRButton = ({
    children,
    onClick,
    variant = 'primary',
    size = 'md',
    icon,
    iconPosition = 'left',
    disabled = false,
    className = '',
    type = 'button',
    ...props
}: any) => {
    const baseClasses = 'inline-flex items-center justify-center gap-2 font-semibold transition-colors duration-200 rounded-none focus:outline-none focus:ring-2 focus:ring-offset-2 hover:-translate-y-0.5';

    const variantClasses: any = {
        primary: 'bg-tjpr-navy-800 hover:bg-tjpr-navy-700 text-white focus:ring-tjpr-navy-700 shadow-sm hover:shadow-md',
        secondary: 'bg-[#f6efe1] hover:bg-[#f0e6d5] text-tjpr-navy-900 border border-[rgba(27,38,59,0.14)] focus:ring-tjpr-navy-700 shadow-sm dark:bg-gray-900 dark:text-white dark:border-gray-300 dark:hover:bg-gray-800',
        success: 'bg-tjpr-success hover:bg-green-700 text-white focus:ring-tjpr-success shadow-sm',
        warning: 'bg-tjpr-warning hover:bg-orange-600 text-tjpr-navy-900 focus:ring-tjpr-warning shadow-sm',
        error: 'bg-tjpr-error hover:bg-red-700 text-white focus:ring-tjpr-error shadow-sm',
        ghost: 'bg-transparent hover:bg-[rgba(27,38,59,0.06)] dark:hover:bg-gray-800 text-gray-700 dark:text-gray-300'
    };

    const sizeClasses: any = {
        sm: 'px-3 py-1.5 text-sm',
        md: 'px-4 py-2 text-base',
        lg: 'px-6 py-3 text-lg'
    };

    const disabledClasses = 'opacity-50 cursor-not-allowed pointer-events-none';
    const iconElement = icon ? renderIcon(icon, 'h-[1em] w-[1em]') : null;

    return (
        <button
            type={type}
            onClick={onClick}
            disabled={disabled}
            className={`${baseClasses} ${variantClasses[variant]} ${sizeClasses[size]} ${disabled ? disabledClasses : ''} ${className}`}
            {...props}
        >
            {iconElement && iconPosition === 'left' && iconElement}
            {children}
            {iconElement && iconPosition === 'right' && iconElement}
        </button>
    );
};

export const TJPRInput = ({
    label,
    value,
    onChange,
    type = 'text',
    placeholder = '',
    required = false,
    error = '',
    helperText = '',
    icon,
    className = '',
    id,
    ...props
}: any) => {
    const generatedId = useId();
    const inputId = id || generatedId;

    return (
        <div className={`w-full ${className}`}>
            {label && (
                <label htmlFor={inputId} className="tjpr-label">
                    {label}
                    {required && <span className="text-tjpr-error ml-1">*</span>}
                </label>
            )}
            <div className="relative">
                {icon && (
                    <div className="absolute inset-y-0 left-0 pl-3 flex items-center pointer-events-none text-gray-400">
                        {renderIcon(icon, 'h-4 w-4')}
                    </div>
                )}
                <input
                    id={inputId}
                    type={type}
                    value={value}
                    onChange={onChange}
                    placeholder={placeholder}
                    required={required}
                    className={`tjpr-input ${icon ? 'pl-10' : ''} ${error ? 'border-tjpr-error' : ''}`}
                    aria-invalid={Boolean(error)}
                    {...props}
                />
            </div>
            {error && (
                <p className="mt-1 text-sm text-tjpr-error flex items-center gap-1">
                    {renderIcon('error', 'h-4 w-4')}
                    {error}
                </p>
            )}
            {helperText && !error && (
                <p className="mt-1 text-sm text-tjpr-gray-700 dark:text-gray-300">
                    {helperText}
                </p>
            )}
        </div>
    );
};

export const TJPRHeader = ({ user, onLogout, onToggleDarkMode, isDarkMode, onOpenProfile, notifications, onToggleNotifications }: any) => {
    const [isMenuOpen, setIsMenuOpen] = useState(false);
    const menuRef = useRef<HTMLDivElement | null>(null);
    const menuId = useId();

    useEffect(() => {
        if (!isMenuOpen) return;

        const handlePointerDown = (event: MouseEvent) => {
            if (menuRef.current && !menuRef.current.contains(event.target as Node)) {
                setIsMenuOpen(false);
            }
        };

        const handleKeyDown = (event: KeyboardEvent) => {
            if (event.key === 'Escape') {
                setIsMenuOpen(false);
            }
        };

        document.addEventListener('mousedown', handlePointerDown);
        document.addEventListener('keydown', handleKeyDown);

        return () => {
            document.removeEventListener('mousedown', handlePointerDown);
            document.removeEventListener('keydown', handleKeyDown);
        };
    }, [isMenuOpen]);

    return (
        <header className="tjpr-header sticky top-0 z-50">
            <div className="max-w-full px-4 sm:px-6 lg:px-8">
                <div className="flex items-center justify-between min-h-16 py-3 gap-4">
                    <div className="flex items-center gap-3 min-w-0">
                        <div
                            aria-hidden="true"
                            className="h-10 w-10 shrink-0 border border-white/20 bg-white/10 flex items-center justify-center text-white font-bold tracking-[0.14em] text-sm"
                        >
                            TJ
                        </div>
                        <div className="min-w-0">
                            <p className="text-[clamp(1rem,0.95rem+0.35vw,1.125rem)] leading-tight font-semibold text-white truncate">
                                Gerador de Minutas
                            </p>
                            <p className="text-xs sm:text-sm text-tjpr-navy-500 truncate">
                                Tribunal de Justiça do Paraná • Assessoria P-SEP-AR
                            </p>
                        </div>
                    </div>

                    <div className="flex items-center gap-2 sm:gap-3 shrink-0">
                        {onToggleNotifications && (
                            <button
                                onClick={onToggleNotifications}
                                className="relative p-2 rounded-none hover:bg-tjpr-navy-700 transition-colors"
                                title="Notificações"
                                aria-label="Abrir notificações"
                            >
                                {renderIcon('notifications', 'h-5 w-5 text-white')}
                                {notifications && notifications.length > 0 && (
                                    <span className="absolute top-1.5 right-1.5 w-2.5 h-2.5 bg-red-500 rounded-none border-2 border-tjpr-navy-900 pointer-events-none"></span>
                                )}
                            </button>
                        )}

                        {onToggleDarkMode && (
                            <button
                                onClick={onToggleDarkMode}
                                className="p-2 rounded-none hover:bg-tjpr-navy-700 transition-colors"
                                title={isDarkMode ? 'Modo claro' : 'Modo escuro'}
                                aria-label={isDarkMode ? 'Ativar modo claro' : 'Ativar modo escuro'}
                            >
                                {renderIcon(isDarkMode ? 'light_mode' : 'dark_mode', 'h-5 w-5 text-white')}
                            </button>
                        )}

                        <div className="relative" ref={menuRef}>
                            <button
                                onClick={() => setIsMenuOpen(!isMenuOpen)}
                                className="flex items-center gap-2 p-2 rounded-none hover:bg-tjpr-navy-700 transition-colors"
                                aria-label="Abrir menu do usuário"
                                aria-haspopup="menu"
                                aria-expanded={isMenuOpen}
                                aria-controls={menuId}
                            >
                                <div
                                    className="w-8 h-8 rounded-none flex items-center justify-center text-white font-semibold"
                                    style={{ backgroundColor: user?.avatarColor || '#C5A572' }}
                                >
                                    {user?.displayName?.charAt(0).toUpperCase() || user?.email?.charAt(0).toUpperCase() || 'U'}
                                </div>
                                <span className="hidden md:block text-white text-sm font-medium max-w-32 truncate">
                                    {user?.displayName || user?.email?.split('@')[0] || 'Usuário'}
                                </span>
                                {renderIcon(isMenuOpen ? 'expand_less' : 'expand_more', 'h-4 w-4 text-white')}
                            </button>

                            {isMenuOpen && (
                                <div
                                    id={menuId}
                                    role="menu"
                                    className="absolute right-0 mt-2 w-48 bg-white dark:bg-gray-800 rounded-none shadow-xl py-2 border border-gray-200 dark:border-gray-700"
                                >
                                    <button
                                        onClick={() => {
                                            if (onOpenProfile) onOpenProfile();
                                            setIsMenuOpen(false);
                                        }}
                                        className="w-full px-4 py-2 text-left text-sm text-gray-700 dark:text-gray-300 hover:bg-gray-100 dark:hover:bg-gray-700 flex items-center gap-2"
                                        role="menuitem"
                                    >
                                        {renderIcon('person', 'h-4 w-4')}
                                        Meu Perfil
                                    </button>
                                    <button
                                        onClick={() => {
                                            if (onLogout) onLogout();
                                            setIsMenuOpen(false);
                                        }}
                                        className="w-full px-4 py-2 text-left text-sm text-tjpr-error hover:bg-gray-100 dark:hover:bg-gray-700 flex items-center gap-2"
                                        role="menuitem"
                                    >
                                        {renderIcon('logout', 'h-4 w-4')}
                                        Sair
                                    </button>
                                </div>
                            )}
                        </div>
                    </div>
                </div>
            </div>
        </header>
    );
};

export const TJPRBadge = ({ children, variant = 'default', icon }: any) => {
    const variants: any = {
        default: 'bg-[rgba(27,38,59,0.06)] text-tjpr-navy-800 border border-[rgba(27,38,59,0.08)] dark:bg-gray-700 dark:text-gray-300 dark:border-gray-600',
        success: 'tjpr-badge-success',
        warning: 'tjpr-badge-warning',
        error: 'tjpr-badge-error',
        info: 'bg-blue-100 text-blue-800 dark:bg-blue-900 dark:text-blue-300'
    };

    return (
        <span className={`tjpr-badge rounded-none ${variants[variant]}`}>
            {icon && <span className="mr-1">{renderIcon(icon, 'h-3 w-3')}</span>}
            {children}
        </span>
    );
};

export const TJPRFormGroup = ({ children, cols = 1, className = '' }: any) => {
    const gridCols: any = {
        1: 'grid-cols-1',
        2: 'grid-cols-1 md:grid-cols-2',
        3: 'grid-cols-1 md:grid-cols-2 lg:grid-cols-3',
        4: 'grid-cols-1 md:grid-cols-2 lg:grid-cols-4'
    };

    return (
        <div className={`grid ${gridCols[cols]} gap-4 ${className}`}>
            {children}
        </div>
    );
};

export const TJPRModal = ({ isOpen, onClose, title, children, maxWidth = '2xl', icon }: any) => {
    if (!isOpen) return null;

    const maxWidths: any = {
        sm: 'max-w-sm',
        md: 'max-w-md',
        lg: 'max-w-lg',
        xl: 'max-w-xl',
        '2xl': 'max-w-2xl',
        '4xl': 'max-w-4xl',
        '6xl': 'max-w-6xl'
    };

    return (
        <div className="fixed inset-0 z-[60] flex items-center justify-center p-4 bg-black/50 backdrop-blur-sm animate-fade-in" role="dialog" aria-modal="true">
            <div className={`w-full ${maxWidths[maxWidth]} max-h-[90vh] overflow-auto`}>
                <div className="tjpr-card">
                    <div className="px-6 py-4 border-b border-gray-200 dark:border-gray-700">
                        <div className="flex items-center justify-between">
                            <div className="flex items-center gap-3">
                                {icon && <span className="text-tjpr-navy-700 dark:text-tjpr-navy-500">{renderIcon(icon, 'h-5 w-5')}</span>}
                                <h3 className="text-lg font-semibold text-gray-900 dark:text-white">
                                    {title}
                                </h3>
                            </div>
                            <button
                                onClick={onClose}
                                className="p-1 rounded-none hover:bg-gray-100 dark:hover:bg-gray-800 transition-colors"
                                aria-label="Fechar modal"
                            >
                                {renderIcon('close', 'h-5 w-5 text-gray-500')}
                            </button>
                        </div>
                    </div>

                    <div className="p-6">
                        {children}
                    </div>
                </div>
            </div>
        </div>
    );
};

export const CookieConsent = () => {
    const [visible, setVisible] = useState(false);

    useEffect(() => {
        const consent = localStorage.getItem('lgpd_consent');
        if (!consent) {
            setVisible(true);
        }
    }, []);

    const handleAccept = () => {
        localStorage.setItem('lgpd_consent', 'true');
        setVisible(false);
    };

    if (!visible) return null;

    return (
        <div className="fixed bottom-0 left-0 right-0 bg-white dark:bg-slate-900 border-t border-slate-200 dark:border-slate-800 p-4 shadow-[0_-4px_6px_-1px_rgba(0,0,0,0.1)] z-[80] animate-fade-in">
            <div className="max-w-7xl mx-auto flex flex-col sm:flex-row items-center justify-between gap-4">
                <div className="text-sm text-slate-700 dark:text-slate-300">
                    <p><strong>Este sistema utiliza dados para funcionamento.</strong></p>
                    <p>Utilizamos armazenamento local para salvar suas preferências e coletamos dados de uso para fins de auditoria e melhoria, em conformidade com a LGPD. Ao continuar, você concorda com nossa Política de Privacidade.</p>
                </div>
                <div className="flex gap-3 flex-shrink-0">
                    <button
                        onClick={handleAccept}
                        className="px-6 py-2 text-sm font-bold bg-blue-600 text-white rounded-none hover:bg-blue-700 transition-colors shadow-sm"
                    >
                        Concordar e Fechar
                    </button>
                </div>
            </div>
        </div>
    );
};
