# Documentação: Onboarding da Equipe e Atribuição de Requisitos (CSU Digital)

**Projeto:** Portal GuardianTech / Thyreos  
**Cliente:** CSU Digital PCI DSS v4.0.1  
**Data:** 15/09/2026  
**Banco Oficial Thyreos:** SQLite  

---

## 1. Visão Geral

Foi implementado o fluxo completo de **Onboarding de Pessoas**, **Atribuição Visual de Requisitos PCI DSS** e **Desmembramento por Escopo/Sub-tarefas** (ex: Requisito 2 - Hardening dividido entre Redes, Infraestrutura e DBA).

---

## 2. Arquivos Criados e URLs Públicas

* **Página de Cadastro da Equipe:** [`cadastro-equipe.html`](file:///Users/kleitonrodrigues/Documents/OUTROS/Claude/Projects/GitHub/Portal/cadastro-equipe.html)  
  * **URL:** `https://portal.guardiantechit.com.br/cadastro-equipe.html`  
  * **Função:** Formulário público para o cliente cadastrar todos os membros (Nome, E-mail, Área, Cargo e Perfil). Exibe lista em tempo real.

* **Página de Atribuição de Requisitos:** [`atribuir-requisitos.html`](file:///Users/kleitonrodrigues/Documents/OUTROS/Claude/Projects/GitHub/Portal/atribuir-requisitos.html)  
  * **URL:** `https://portal.guardiantechit.com.br/atribuir-requisitos.html`  
  * **Função:** Dashboard visual para o Ponto Focal Coordenador vincular cada sub-item por escopo a um Ponto Focal Operacional (via Dropdown ou Atribuição Automática por Área). Exibe a indicação 📍 **Escopo Específico**.

* **Script SQL Nativizado para SQLite:** [`schema_responsaveis_thyreos_sqlite.sql`](file:///Users/kleitonrodrigues/Documents/OUTROS/Claude/Projects/GitHub/Portal/schema_responsaveis_thyreos_sqlite.sql)  
  * **Função:** Criação das tabelas relativas a projetos, pessoas, requisitos (com `requisito_pai_id` e `escopo`) e evidências.

* **Especificação de Notificações por E-mail:** [`DOCUMENTACAO_NOTIFICACOES_EMAIL.md`](file:///Users/kleitonrodrigues/Documents/OUTROS/Claude/Projects/GitHub/Portal/DOCUMENTACAO_NOTIFICACOES_EMAIL.md)  
  * **Função:** Mapeamento dos gatilhos de e-mail (boas-vindas, atribuição, GAP/ajuste solicitado, aceite QSA e relatórios SLA) via n8n/Resend.

---

## 3. Modelo de Dados (SQLite & Supabase)

* **`projetos`**: Guarda a identificação do projeto (`11111111-1111-1111-1111-111111111111` - *CSU Digital PCI DSS 4.0.1*).
* **`usuarios_internos`**: Registra a equipe interna por área (TI, Redes, Dev, DBA, RH) e perfil (`operacional`, `coordenador`, `executivo`, `auditor`).
* **`requisitos_conformidade`**: Relaciona os requisitos com `responsavel_id`, `requisito_pai_id` e `escopo` (ex: `2.2.1-A` Firewalls, `2.2.1-B` Servidores, `2.2.1-C` DBA).
* **`evidencias`**: Registra os uploads com rastreabilidade do autor (`enviado_por_id`).

---

## 4. Passo a Passo de Utilização

1. **Envio do Link de Onboarding:** Enviar `https://portal.guardiantechit.com.br/cadastro-equipe.html` para a CSU Digital cadastrar a equipe.
2. **Atribuição dos Requisitos por Escopo:** O Ponto Focal Coordenador acessa `https://portal.guardiantechit.com.br/atribuir-requisitos.html` e faz o vínculo dos responsáveis por sub-item em 1 clique (automático por área ou manual).
3. **Execução & Evidências:** Cada área (Redes, Infra, DBA, Dev) responde exclusivamente pelo seu escopo específico sem travar os demais integrantes.
