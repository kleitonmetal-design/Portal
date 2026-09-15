# Guia Passo a Passo: Migração do Portal para a Plataforma Thyreos (https://thyreos.io/)

**Projeto:** Portal GuardianTech → Plataforma Thyreos  
**Banco Oficial:** SQLite (nativizado)  
**Objetivo:** Guia prático de execução da migração passo a passo.

---

## 📌 Passo 1: Preparação do Banco de Dados SQLite (Dia 1)

1. Executar o script SQL [`schema_responsaveis_thyreos_sqlite.sql`](file:///Users/kleitonrodrigues/Documents/OUTROS/Claude/Projects/GitHub/Portal/schema_responsaveis_thyreos_sqlite.sql) no banco de dados SQLite oficial da Thyreos.
2. Validar a criação das 4 tabelas fundamentais com suporte a sub-tarefas por escopo (`requisito_pai_id` e `escopo`):
   - `projetos`
   - `usuarios_internos`
   - `requisitos_conformidade`
   - `evidencias`
3. Confirmar a carga dos dados iniciais da **CSU Digital PCI DSS 4.0.1** desmembrados por área (ex: `2.2.1-A` Firewalls, `2.2.1-B` Servidores, `2.2.1-C` DBA).

---

## 📌 Passo 2: Portabilidade das Telas de Frontend (Dias 2 a 4)

1. **Módulo de Onboarding da Equipe:**
   - Portar o formulário [`cadastro-equipe.html`](file:///Users/kleitonrodrigues/Documents/OUTROS/Claude/Projects/GitHub/Portal/cadastro-equipe.html) para o caminho `/app/onboarding` da Thyreos.
   - Conectar o botão "Cadastrar Integrante" à API nativa de criação de usuários da Thyreos.

2. **Módulo de Atribuição Visual de Requisitos por Escopo:**
   - Portar o painel [`atribuir-requisitos.html`](file:///Users/kleitonrodrigues/Documents/OUTROS/Claude/Projects/GitHub/Portal/atribuir-requisitos.html) para a visão do Ponto Focal Coordenador na Thyreos.
   - Habilitar o seletor por sub-item/escopo e o botão "Atribuição Automática por Área".

3. **Dashboards Dinâmicos ROC (CSU e ZUP):**
   - Incorporar a visualização dos painéis dinâmicos dentro do módulo de relatórios da Thyreos.

---

## 📌 Passo 3: Autenticação & Notificações por E-mail (Dias 5 a 7)

1. Substituir a chave pública pela autenticação por sessão/JWT da Thyreos.
2. Configurar os gatilhos de e-mail (Boas-vindas, Atribuição, GAP/Ajuste solicitado e Aceite QSA) conforme a especificação [`DOCUMENTACAO_NOTIFICACOES_EMAIL.md`](file:///Users/kleitonrodrigues/Documents/OUTROS/Claude/Projects/GitHub/Portal/DOCUMENTACAO_NOTIFICACOES_EMAIL.md) via webhook n8n ou API do Resend.
3. Atualizar o CORS dos webhooks n8n permitindo a origem `https://thyreos.io`.

---

## 📌 Passo 4: Homologação com Cliente de Teste (Dias 8 a 9)

1. Cadastrar um integrante de teste no formulário da CSU Digital.
2. Realizar a atribuição de um requisito PCI desmembrado (ex: `2.2.1-A` Redes e `2.2.1-C` DBA).
3. Simular o envio de evidência por cada escopo e validação pelo perfil QSA/Auditor.

---

## 📌 Passo 5: Virada de Chave (Go-Live) (Dia 10)

1. Atualizar a tabela `links` do portal direcionando para as novas rotas em `https://thyreos.io/app/...`.
2. Configurar o redirecionamento (HTTP 301) em `portal.guardiantechit.com.br` para `https://thyreos.io/`.
