# Documentação: Onboarding da Equipe e Atribuição Multi-Perfil (CSU Digital)

**Projeto:** Portal GuardianTech / Thyreos  
**Cliente:** CSU Digital PCI DSS v4.0.1  
**Data:** 15/09/2026  
**Banco Oficial Thyreos:** SQLite & Supabase  

---

## 1. Visão Geral

Foi implementado o fluxo completo de **Onboarding de Pessoas**, **Atribuição Visual de Requisitos PCI DSS**, **Navegação Multi-Perfil (Operacional, Executivo, QSA Lead e Admin)**, **Matriz de Risco 5x5 (Probabilidade x Impacto)** e **Validação de Evidências com Hash SHA-256**.

---

## 2. Arquivos Criados e URLs Públicas

* **Página de Atribuição Multi-Perfil & Escopo:** [`atribuir-requisitos.html`](file:///Users/kleitonrodrigues/Documents/OUTROS/Claude/Projects/GitHub/Portal/atribuir-requisitos.html)  
  * **URL:** `https://portal.guardiantechit.com.br/atribuir-requisitos.html`  
  * **Função:** Módulo unificado que permite alternância em tempo real entre os 4 perfis do projeto:
    * 🧑‍💻 **Ponto Focal Operacional** *(Ana Ribeiro)*: Envio de evidências, acompanhamento de prazos e cálculo de Hashes SHA-256.
    * 📊 **Ponto Focal Executivo**: Visão consolidada da Matriz 5x5, Selo de Risco e % de conformidade por diretoria.
    * 🛡️ **QSA Auditor Lead**: Análise formal de evidências, aceite/rejeição e emissão de GAPs com campo obrigatório de justificativa.
    * ⚙️ **Admin Governança**: Onboarding da equipe, matriz de escopo e trava de permissões.
  * **Persistência:** Salva todas as ações simuladas e alterações no `LocalStorage` do navegador (`portal_pci_requisitos`).

* **Dashboard Executivo & Matriz 5x5:** [`dashboard-executivo.html`](file:///Users/kleitonrodrigues/Documents/OUTROS/Claude/Projects/GitHub/Portal/dashboard-executivo.html)  
  * **URL:** `https://portal.guardiantechit.com.br/dashboard-executivo.html`  
  * **Função:** Visão executiva com Matriz de Risco 5x5 (Probabilidade x Impacto), Selo de Risco Geral e acompanhamento de GAPs críticos.

* **Página de Cadastro da Equipe:** [`cadastro-equipe.html`](file:///Users/kleitonrodrigues/Documents/OUTROS/Claude/Projects/GitHub/Portal/cadastro-equipe.html)  
  * **URL:** `https://portal.guardiantechit.com.br/cadastro-equipe.html`  
  * **Função:** Formulário público para o cliente cadastrar todos os membros (Nome, E-mail, Área, Cargo e Perfil).

* **Script SQL Nativizado para SQLite:** [`schema_responsaveis_thyreos_sqlite.sql`](file:///Users/kleitonrodrigues/Documents/OUTROS/Claude/Projects/GitHub/Portal/schema_responsaveis_thyreos_sqlite.sql)  
  * **Função:** Criação das tabelas relativas a projetos, pessoas, requisitos (com `requisito_pai_id` e `escopo`) e evidências.

---

## 3. Modelo de Dados (SQLite & Supabase)

* **`projetos`**: Guarda a identificação do projeto (`11111111-1111-1111-1111-111111111111` - *CSU Digital PCI DSS 4.0.1*).
* **`usuarios_internos`**: Registra a equipe interna por área (TI, Redes, Dev, DBA, RH) e perfil (`operacional`, `coordenador`, `executivo`, `auditor`).
* **`requisitos_conformidade`**: Relaciona os requisitos com `responsavel_id`, `requisito_pai_id`, `status` (`NAO_ENVIADO`, `ENVIADO`, `EM_REVISAO`, `AJUSTE_SOLICITADO`, `ACEITO`), `comentario_auditor` e `pendencia_gap`.
* **`evidencias`**: Registra os uploads com rastreabilidade de autor e `sha256_hash`.

---

## 4. Passo a Passo de Utilização

1. **Acesso ao Portal:** Acesse `https://portal.guardiantechit.com.br/index.html`.
2. **Navegação Multi-Perfil:** Na página `atribuir-requisitos.html`, alterne entre os perfis (Operacional, Executivo, QSA Lead e Admin) usando os botões do cabeçalho ou o seletor rápido.
3. **Envio & Validação de Evidências:** Suba arquivos de evidência com cálculo automático do Hash SHA-256 e receba os pareceres formais da auditoria QSA com persistência salva no navegador.
