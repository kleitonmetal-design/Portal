-- ==============================================================================
-- SCRIPT DE CRIAÇÃO DE TABELAS PARA SQLITE (PLATAFORMA THYREOS)
-- SUPORTE A SUB-TAREFAS E MÚLTIPLOS ESCOPOS POR REQUISITO
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
    area TEXT NOT NULL, -- Ex: TI, Infraestrutura, Segurança, RH, Financeiro, DBA
    cargo TEXT,
    perfil TEXT CHECK (perfil IN ('operacional', 'coordenador', 'executivo', 'auditor')),
    ativo INTEGER DEFAULT 1,
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP
);

-- 3. Tabela de Requisitos, Sub-tarefas e Atribuição por Escopo
CREATE TABLE IF NOT EXISTS requisitos_conformidade (
    id TEXT PRIMARY KEY,
    projeto_id TEXT REFERENCES projetos(id) ON DELETE CASCADE,
    requisito_pai_id TEXT REFERENCES requisitos_conformidade(id) ON DELETE CASCADE, -- Suporte a Sub-tarefas
    codigo TEXT NOT NULL, -- Ex: 1.2.1-A, 2.2.1-B
    titulo TEXT NOT NULL,
    escopo TEXT, -- Ex: 'Hardening Firewalls', 'Hardening Servidores', 'Hardening Banco de Dados'
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
    enviado_por_id TEXT REFERENCES usuarios_internos(id) ON DELETE SET NULL, -- Rastreabilidade em nome de terceiros
    arquivo_nome TEXT NOT NULL,
    arquivo_url TEXT NOT NULL,
    sha256_hash TEXT, -- Validação de integridade do arquivo
    tamanho_bytes INTEGER,
    observacao TEXT,
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP
);

-- ==============================================================================
-- DADOS DE TESTE INICIAIS (CSU DIGITAL - COM DESMEMBRAMENTO DE ESCOPO)
-- ==============================================================================

-- Inserir Projeto CSU Digital
INSERT OR REPLACE INTO projetos (id, nome, norma) 
VALUES ('11111111-1111-1111-1111-111111111111', 'CSU Digital PCI DSS 4.0.1', 'PCI DSS v4.0.1');

-- Inserir Usuários Internos da CSU Digital por Área
INSERT OR REPLACE INTO usuarios_internos (id, projeto_id, nome, email, area, cargo, perfil) VALUES
('66666666-6666-6666-6666-666666666666', '11111111-1111-1111-1111-111111111111', 'Kleiton Rodrigues', 'krodrigues@botech.info', 'Segurança da Informação', 'Administrador da Plataforma', 'coordenador'),
('22222222-2222-2222-2222-222222222222', '11111111-1111-1111-1111-111111111111', 'Ponto Focal CSU', 'focal.pci@csudigital.com.br', 'Segurança da Informação', 'Coordenador PCI', 'coordenador'),
('33333333-3333-3333-3333-333333333333', '11111111-1111-1111-1111-111111111111', 'Responsável Redes CSU', 'redes.infra@csudigital.com.br', 'Infraestrutura e Redes', 'Especialista de Redes', 'operacional'),
('44444444-4444-4444-4444-444444444444', '11111111-1111-1111-1111-111111111111', 'Responsável Sistemas CSU', 'sistemas.dev@csudigital.com.br', 'Sistemas e Desenvolvimento', 'Desenvolvedor Senior', 'operacional'),
('55555555-5555-5555-5555-555555555555', '11111111-1111-1111-1111-111111111111', 'Responsável DBA CSU', 'dba.dados@csudigital.com.br', 'Banco de Dados (DBA)', 'Administrador de Banco de Dados', 'operacional');

-- Inserir Requisitos Desmembrados por Escopo (Ex: Requisito 2 - Hardening)
INSERT OR IGNORE INTO requisitos_conformidade (id, projeto_id, codigo, titulo, escopo, area_sugerida, responsavel_id, atribuido_por_id, status, prazo_entrega) VALUES
('req-csu-1a', '11111111-1111-1111-1111-111111111111', '1.2.1-A', 'Configuração de Segurança de Rede', 'Firewalls e Roteadores', 'Infraestrutura e Redes', '33333333-3333-3333-3333-333333333333', '22222222-2222-2222-2222-222222222222', 'ENVIADO', '2026-09-30'),
('req-csu-2a', '11111111-1111-1111-1111-111111111111', '2.2.1-A', 'System Hardening de Dispositivos', 'Dispositivos de Rede e Firewalls', 'Infraestrutura e Redes', '33333333-3333-3333-3333-333333333333', '22222222-2222-2222-2222-222222222222', 'ACEITO', '2026-09-30'),
('req-csu-2b', '11111111-1111-1111-1111-111111111111', '2.2.1-B', 'System Hardening de Servidores', 'Servidores Linux e Windows', 'Infraestrutura e Redes', '33333333-3333-3333-3333-333333333333', '22222222-2222-2222-2222-222222222222', 'EM_REVISAO', '2026-10-05'),
('req-csu-2c', '11111111-1111-1111-1111-111111111111', '2.2.1-C', 'System Hardening de Bancos de Dados', 'Bancos de Dados Relacionais', 'Banco de Dados (DBA)', '55555555-5555-5555-5555-555555555555', '22222222-2222-2222-2222-222222222222', 'NAO_ENVIADO', '2026-10-10'),
('req-csu-3a', '11111111-1111-1111-1111-111111111111', '3.4.1-A', 'Criptografia de Dados (PAN)', 'Bancos de Dados & Storage', 'Segurança da Informação', '66666666-6666-6666-6666-666666666666', '22222222-2222-2222-2222-222222222222', 'EM_REVISAO', '2026-10-12'),
('req-csu-6a', '11111111-1111-1111-1111-111111111111', '6.3.1-A', 'Gestão de Patches de Segurança', 'Aplicações e Código Fonte', 'Sistemas e Desenvolvimento', '44444444-4444-4444-4444-444444444444', '22222222-2222-2222-2222-222222222222', 'NAO_ENVIADO', '2026-10-15'),
('req-csu-8a', '11111111-1111-1111-1111-111111111111', '8.3.1-A', 'Autenticação Múltiplo Fator (MFA)', 'Acessos Administrativos', 'Segurança da Informação', '66666666-6666-6666-6666-666666666666', '22222222-2222-2222-2222-222222222222', 'NAO_ENVIADO', '2026-10-20');
