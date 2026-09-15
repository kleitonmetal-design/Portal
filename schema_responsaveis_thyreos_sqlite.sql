-- ==============================================================================
-- SCRIPT DE CRIAÇÃO DE TABELAS PARA SQLITE (PLATAFORMA THYREOS)
-- CLIENTE DE TESTE: CSU Digital PCI DSS 4.0.1
-- ==============================================================================

PRAGMA foreign_keys = ON;

-- 1. Tabela de Projetos / Clientes
CREATE TABLE IF NOT EXISTS projetos (
    id TEXT PRIMARY KEY,
    nome TEXT NOT NULL,
    norma TEXT DEFAULT 'PCI DSS v4.0.1',
    ativo INTEGER DEFAULT 1,
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP
);

-- 2. Tabela de Usuários Internos / Responsáveis do Cliente
CREATE TABLE IF NOT EXISTS usuarios_internos (
    id TEXT PRIMARY KEY,
    projeto_id TEXT REFERENCES projetos(id) ON DELETE CASCADE,
    nome TEXT NOT NULL,
    email TEXT NOT NULL UNIQUE,
    area TEXT NOT NULL, -- Ex: TI, Infraestrutura, Segurança, RH, Financeiro
    cargo TEXT,
    perfil TEXT CHECK (perfil IN ('operacional', 'coordenador', 'executivo', 'auditor')),
    ativo INTEGER DEFAULT 1,
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP
);

-- 3. Tabela de Requisitos e Atribuição de Responsáveis
CREATE TABLE IF NOT EXISTS requisitos_conformidade (
    id TEXT PRIMARY KEY,
    projeto_id TEXT REFERENCES projetos(id) ON DELETE CASCADE,
    codigo TEXT NOT NULL, -- Ex: 1.2.1, 2.1.1, 10.2.1
    titulo TEXT NOT NULL,
    descricao TEXT,
    area_sugerida TEXT,
    responsavel_id TEXT REFERENCES usuarios_internos(id) ON DELETE SET NULL, -- Ponto Focal Operacional
    atribuido_por_id TEXT REFERENCES usuarios_internos(id) ON DELETE SET NULL, -- Ponto Focal Coordenador
    status TEXT DEFAULT 'NAO_ENVIADO' CHECK (status IN (
        'NAO_ENVIADO',
        'ENVIADO',
        'EM_REVISAO',
        'AJUSTE_SOLICITADO',
        'ACEITO'
    )),
    prazo_entrega TEXT,
    pendencia_gap TEXT,
    comentario_auditor TEXT,
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP
);

-- 4. Tabela de Evidências Enviadas
CREATE TABLE IF NOT EXISTS evidencias (
    id TEXT PRIMARY KEY,
    requisito_id TEXT REFERENCES requisitos_conformidade(id) ON DELETE CASCADE,
    enviado_por_id TEXT REFERENCES usuarios_internos(id) ON DELETE SET NULL, -- Rastreabilidade (quem enviou)
    arquivo_nome TEXT NOT NULL,
    arquivo_url TEXT NOT NULL,
    observacao TEXT,
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP
);

-- ==============================================================================
-- DADOS DE TESTE INICIAIS (CSU DIGITAL PCI DSS 4.0.1)
-- ==============================================================================

-- Inserir Projeto CSU Digital
INSERT OR REPLACE INTO projetos (id, nome, norma) 
VALUES ('11111111-1111-1111-1111-111111111111', 'CSU Digital PCI DSS 4.0.1', 'PCI DSS v4.0.1');

-- Inserir Usuários Internos da CSU Digital
INSERT OR REPLACE INTO usuarios_internos (id, projeto_id, nome, email, area, cargo, perfil) VALUES
('22222222-2222-2222-2222-222222222222', '11111111-1111-1111-1111-111111111111', 'Ponto Focal CSU', 'focal.pci@csudigital.com.br', 'Segurança da Informação', 'Coordenador de Conformidade PCI', 'coordenador'),
('33333333-3333-3333-3333-333333333333', '11111111-1111-1111-1111-111111111111', 'Responsável Redes CSU', 'redes.infra@csudigital.com.br', 'Infraestrutura e Redes', 'Especialista de Redes', 'operacional'),
('44444444-4444-4444-4444-444444444444', '11111111-1111-1111-1111-111111111111', 'Responsável Sistemas CSU', 'sistemas.dev@csudigital.com.br', 'Sistemas e Desenvolvimento', 'Desenvolvedor Senior', 'operacional');

-- Inserir Requisitos de Teste CSU Digital
INSERT OR IGNORE INTO requisitos_conformidade (id, projeto_id, codigo, titulo, area_sugerida, responsavel_id, atribuido_por_id, status, prazo_entrega) VALUES
('req-csu-1', '11111111-1111-1111-1111-111111111111', '1.2.1', 'Configuração de Controles de Segurança de Rede (Firewalls / Roteadores)', 'Infraestrutura e Redes', '33333333-3333-3333-3333-333333333333', '22222222-2222-2222-2222-222222222222', 'ENVIADO', '2026-09-30'),
('req-csu-2', '11111111-1111-1111-1111-111111111111', '6.3.1', 'Gestão de Vulnerabilidades e Aplicação de Patches de Segurança', 'Sistemas e Desenvolvimento', '44444444-4444-4444-4444-444444444444', '22222222-2222-2222-2222-222222222222', 'NAO_ENVIADO', '2026-10-15');
