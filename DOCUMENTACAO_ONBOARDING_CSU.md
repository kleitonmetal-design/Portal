# Documentação: Onboarding da Equipe e Atribuição de Requisitos (CSU Digital)

**Projeto:** Portal GuardianTech / Thyreos  
**Cliente:** CSU Digital PCI DSS v4.0.1  
**Data:** 15/09/2026  

---

## 1. Visão Geral

Foi implementado o fluxo completo de **Onboarding de Pessoas** e **Atribuição Visual de Requisitos PCI DSS** para os projetos de conformidade da CSU Digital.

---

## 2. Arquivos Criados e URLs Públicas

* **Página de Cadastro da Equipe:** [`cadastro-equipe.html`](file:///Users/kleitonrodrigues/Documents/OUTROS/Claude/Projects/GitHub/Portal/cadastro-equipe.html)  
  * **URL:** `https://portal.guardiantechit.com.br/cadastro-equipe.html`  
  * **Função:** Formulário público para o cliente cadastrar todos os membros (Nome, E-mail, Área, Cargo e Perfil). Exibe lista em tempo real.

* **Página de Atribuição de Requisitos:** [`atribuir-requisitos.html`](file:///Users/kleitonrodrigues/Documents/OUTROS/Claude/Projects/GitHub/Portal/atribuir-requisitos.html)  
  * **URL:** `https://portal.guardiantechit.com.br/atribuir-requisitos.html`  
  * **Função:** Dashboard visual para o Ponto Focal Coordenador vincular cada requisito da norma a um Operacional (via Dropdown ou botão de Atribuição Automática por Área).

* **Script SQL de Banco:** [`schema_responsaveis_thyreos.sql`](file:///Users/kleitonrodrigues/Documents/OUTROS/Claude/Projects/GitHub/Portal/schema_responsaveis_thyreos.sql)  
  * **Função:** Criação das tabelas relativas a projetos, pessoas, requisitos e evidências.

---

## 3. Modelo de Dados no Supabase

* **`projetos`**: Guarda a identificação do projeto (`11111111-1111-1111-1111-111111111111` - *CSU Digital PCI DSS 4.0.1*).
* **`usuarios_internos`**: Registra a equipe interna por área e perfil (`operacional`, `coordenador`, `executivo`, `auditor`).
* **`requisitos_conformidade`**: Associa o requisito ao `responsavel_id` (Ponto Focal Operacional) e ao `atribuido_por_id` (Coordenador).
* **`evidencias`**: Registra os uploads com rastreabilidade do autor (`enviado_por_id`).

---

## 4. Passo a Passo de Utilização

1. **Envio do Link de Onboarding:** Enviar `https://portal.guardiantechit.com.br/cadastro-equipe.html` para a CSU Digital cadastrar a equipe.
2. **Atribuição dos Requisitos:** O Ponto Focal Coordenador acessa `https://portal.guardiantechit.com.br/atribuir-requisitos.html` e faz o vínculo dos responsáveis em 1 clique (automático por área ou manual).
3. **Execução & Evidências:** Os operacionais acompanham apenas os requisitos atribuídos ao seu usuário.
