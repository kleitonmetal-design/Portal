-- ==============================================================================
-- SCRIPT DE CRIAÇÃO DE TABELAS - GESTÃO DE RESPONSÁVEIS E CONFORMIDADE (THYREOS)
-- CLIENTE DE TESTE: CSU Digital PCI DSS 4.0.1
-- ==============================================================================

-- 1. Tabela de Projetos / Clientes
CREATE TABLE IF NOT EXISTS projetos (
    id UUID DEFAULT gen_random_uuid() PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    norma VARCHAR(100) DEFAULT 'PCI DSS v4.0.1',
    ativo BOOLEAN DEFAULT TRUE,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);

-- 2. Tabela de Usuários Internos / Responsáveis do Cliente
CREATE TABLE IF NOT EXISTS usuarios_internos (
    id UUID DEFAULT gen_random_uuid() PRIMARY KEY,
    projeto_id UUID REFERENCES projetos(id) ON DELETE CASCADE,
    nome VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL UNIQUE,
    area VARCHAR(100) NOT NULL, -- Ex: TI, Infraestrutura, Segurança, RH, Financeiro
    cargo VARCHAR(100),
    perfil VARCHAR(50) CHECK (perfil IN ('operacional', 'coordenador', 'executivo', 'auditor')),
    ativo BOOLEAN DEFAULT TRUE,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);

-- 3. Tabela de Requisitos e Atribuição de Responsáveis
CREATE TABLE IF NOT EXISTS requisitos_conformidade (
    id UUID DEFAULT gen_random_uuid() PRIMARY KEY,
    projeto_id UUID REFERENCES projetos(id) ON DELETE CASCADE,
    codigo VARCHAR(50) NOT NULL, -- Ex: 1.2.1, 2.1.1, 10.2.1
    titulo TEXT NOT NULL,
    descricao TEXT,
    area_sugerida VARCHAR(100),
    responsavel_id UUID REFERENCES usuarios_internos(id) ON DELETE SET NULL, -- Ponto Focal Operacional
    atribuido_por_id UUID REFERENCES usuarios_internos(id) ON DELETE SET NULL, -- Ponto Focal Coordenador
    status VARCHAR(50) DEFAULT 'NAO_ENVIADO' CHECK (status IN (
        'NAO_ENVIADO',
        'ENVIADO',
        'EM_REVISAO',
        'AJUSTE_SOLICITADO',
        'ACEITO'
    )),
    prazo_entrega DATE,
    pendencia_gap TEXT, -- Preenchido obrigatoriamente quando status = 'AJUSTE_SOLICITADO'
    comentario_auditor TEXT,
    updated_at TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);

-- 4. Tabela de Evidências Enviadas
CREATE TABLE IF NOT EXISTS evidencias (
    id UUID DEFAULT gen_random_uuid() PRIMARY KEY,
    requisito_id UUID REFERENCES requisitos_conformidade(id) ON DELETE CASCADE,
    enviado_por_id UUID REFERENCES usuarios_internos(id) ON DELETE SET NULL, -- Rastreabilidade (quem enviou)
    arquivo_nome TEXT NOT NULL,
    arquivo_url TEXT NOT NULL,
    observacao TEXT,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);

-- Habilitar RLS (Row Level Security) e permitir leitura pública para testes
ALTER TABLE projetos ENABLE ROW LEVEL SECURITY;
ALTER TABLE usuarios_internos ENABLE ROW LEVEL SECURITY;
ALTER TABLE requisitos_conformidade ENABLE ROW LEVEL SECURITY;
ALTER TABLE evidencias ENABLE ROW LEVEL SECURITY;

CREATE POLICY "Permitir leitura publica em projetos" ON projetos FOR SELECT USING (true);
CREATE POLICY "Permitir leitura publica em usuarios_internos" ON usuarios_internos FOR SELECT USING (true);
CREATE POLICY "Permitir leitura publica em requisitos_conformidade" ON requisitos_conformidade FOR SELECT USING (true);
CREATE POLICY "Permitir leitura publica em evidencias" ON evidencias FOR SELECT USING (true);

-- ==============================================================================
-- DADOS DE TESTE INICIAIS (CSU DIGITAL PCI DSS 4.0.1)
-- ==============================================================================

-- Inserir Projeto CSU Digital
INSERT INTO projetos (id, nome, norma) 
VALUES ('11111111-1111-1111-1111-111111111111', 'CSU Digital PCI DSS 4.0.1', 'PCI DSS v4.0.1')
ON CONFLICT (id) DO UPDATE SET nome = EXCLUDED.nome;

-- Inserir Usuários Internos da CSU Digital
INSERT INTO usuarios_internos (id, projeto_id, nome, email, area, cargo, perfil) VALUES
('22222222-2222-2222-2222-222222222222', '11111111-1111-1111-1111-111111111111', 'Ponto Focal CSU', 'focal.pci@csudigital.com.br', 'Segurança da Informação', 'Coordenador de Conformidade PCI', 'coordenador'),
('33333333-3333-3333-3333-333333333333', '11111111-1111-1111-1111-111111111111', 'Responsável Redes CSU', 'redes.infra@csudigital.com.br', 'Infraestrutura e Redes', 'Especialista de Redes', 'operacional'),
('44444444-4444-4444-4444-444444444444', '11111111-1111-1111-1111-111111111111', 'Responsável Sistemas CSU', 'sistemas.dev@csudigital.com.br', 'Sistemas e Desenvolvimento', 'Desenvolvedor Senior', 'operacional')
ON CONFLICT (email) DO UPDATE SET nome = EXCLUDED.nome, area = EXCLUDED.area;

-- Inserir Requisitos de Teste CSU Digital
INSERT INTO requisitos_conformidade (projeto_id, codigo, titulo, area_sugerida, responsavel_id, atribuido_por_id, status, prazo_entrega) VALUES
('11111111-1111-1111-1111-111111111111', '1.2.1', 'Configuração de Controles de Segurança de Rede (Firewalls / Roteadores)', 'Infraestrutura e Redes', '33333333-3333-3333-3333-333333333333', '22222222-2222-2222-2222-222222222222', 'ENVIADO', '2026-09-30'),
('11111111-1111-1111-1111-111111111111', '6.3.1', 'Gestão de Vulnerabilidades e Aplicação de Patches de Segurança', 'Sistemas e Desenvolvimento', '44444444-4444-4444-4444-444444444444', '22222222-2222-2222-2222-222222222222', 'NAO_ENVIADO', '2026-10-15')
ON CONFLICT DO NOTHING;
