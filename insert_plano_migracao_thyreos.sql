-- Script para criar o documento do Plano de Migração na tabela 'documentos' do Supabase
INSERT INTO documentos (titulo, conteudo) 
VALUES (
  'Plano de Migração do Portal GuardianTech para a Plataforma Thyreos (https://thyreos.io/)',
  '# Plano de Migração do Portal GuardianTech para a Plataforma Thyreos (https://thyreos.io/)

Consolidação de todas as funcionalidades estáticas e banco de dados do Portal GuardianTech (HTML + Supabase + n8n) para a plataforma oficial **Thyreos** (`https://thyreos.io/`).

## Visão Geral e Objetivo

Atualmente, o Portal GuardianTech opera com páginas HTML estáticas no GitHub Pages (`portal.guardiantechit.com.br`), Supabase para persistência de dados e webhooks do n8n para dashboards dinâmicos.

O objetivo deste plano é migrar **todos os módulos, cadastros e dashboards** para a infraestrutura oficial da **Thyreos**, centralizando a experiência do cliente em um único ambiente.

---

## Definições Arquiteturais com a Equipe da Thyreos

1. **Estratégia de Hospedagem:** O portal `portal.guardiantechit.com.br` fará um redirecionamento automático (301) para `https://thyreos.io/` ou os módulos rodarão sob um subdomínio (ex: `pci.thyreos.io`)?
2. **Modelagem do Banco de Dados:** O banco nativo da Thyreos vai absorver o esquema SQL de dados (`schema_responsaveis_thyreos.sql`) ou consumirá via API a estrutura existente no Supabase durante a transição?
3. **Controle de Acesso (Autenticação):** As telas atuais de cadastro de equipe (`cadastro-equipe.html`) usam chaves públicas. Na Thyreos, o cadastro deve ser protegido e associado à sessão autenticada do Ponto Focal do Cliente.

---

## Fases Propostas para a Migração

### Fase 1: Migração do Banco de Dados & Serviços (Backend)
- Exportação / Mapeamento do Banco: Rodar o script `schema_responsaveis_thyreos.sql` ou migrar as tabelas (`projetos`, `usuarios_internos`, `requisitos_conformidade`, `evidencias`) para o banco de dados oficial do Thyreos.
- Configuração de CORS e Webhooks: Atualizar as origens permitidas nos webhooks do n8n para aceitar chamadas vindas do domínio `https://thyreos.io`.

### Fase 2: Incorporação dos Módulos no Frontend Thyreos
- Módulo de Onboarding de Equipe: Converter o formulário `cadastro-equipe.html` em uma tela/componente nativo do Thyreos (`/app/onboarding`).
- Módulo de Atribuição Visual: Converter o painel de atribuição `atribuir-requisitos.html` na visão oficial do Ponto Focal Coordenador.
- Dashboards ROC (PCI DSS): Integrar a visualização dos painéis dinâmicos da ZUP e CSU dentro da área de relatórios da Thyreos.

### Fase 3: Redirecionamento & Virada de Chave (Go-Live)
- Atualização dos Links no Supabase: Atualizar os registros da tabela `links` apontando as URLs para os novos caminhos na Thyreos (`https://thyreos.io/app/...`).
- Redirecionamento do Portal: Configurar o `index.html` ou regras de DNS para redirecionar os acessos legados para a Thyreos.

---

## Plano de Verificação

- Testar chamadas API de envio de evidência e atribuição de responsável via testes de integração no Thyreos.
- Testar o fluxo completo de cadastro com um e-mail de teste da CSU Digital no ambiente `https://thyreos.io/`.
- Garantir que o Ponto Focal veja todos os requisitos atribuídos corretamente no novo painel.'
);
