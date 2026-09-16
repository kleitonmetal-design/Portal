# Documentação: Onboarding da Equipe e Atribuição Multi-Perfil (CSU Digital)

**Projeto:** Portal GuardianTech / Thyreos Trust Platform  
**Cliente:** CSU Digital PCI DSS v4.0.1  
**Data da Última Atualização:** 16/09/2026  
**Banco Oficial Thyreos:** SQLite & Supabase  

---

## 1. Visão Geral

Foi implementado o ecossistema completo de **Onboarding de Pessoas**, **Atribuição Visual de Requisitos PCI DSS**, **Navegação Multi-Perfil (Operacional, Executivo, QSA Lead e Admin)**, **Matriz de Risco 5x5 (Probabilidade x Impacto)**, **Validação de Evidências com Hash SHA-256** e **Ambiente de Demonstração Unificado em Tempo Real**.

---

## 2. Arquivos Criados e URLs Públicas

* **⭐ Demonstração Multiperfil Unificada:** [`demo-perfis-pci.html`](file:///Users/kleitonrodrigues/Documents/OUTROS/Claude/Projects/GitHub/Portal/demo-perfis-pci.html)  
  * **URL:** `https://portal.guardiantechit.com.br/demo-perfis-pci.html`  
  * **Função:** Painel máster de simulação que permite alternar em tempo real entre todos os 4 perfis em um único ambiente completo com Matriz 5x5, upload de evidências, validação SHA-256 e parecer QSA.

* **🔑 Portal de Login Exclusivo:** [`login.html`](file:///Users/kleitonrodrigues/Documents/OUTROS/Claude/Projects/GitHub/Portal/login.html)  
  * **URL:** `https://portal.guardiantechit.com.br/login.html`  
  * **Função:** Interface de login isolada por perfil com simulação de sessão.

* **📂 Painel Focal Operacional:** [`painel-operacional.html`](file:///Users/kleitonrodrigues/Documents/OUTROS/Claude/Projects/GitHub/Portal/painel-operacional.html)  
  * **URL:** `https://portal.guardiantechit.com.br/painel-operacional.html`  
  * **Função:** Visão de tarefas para o Ponto Focal *(Ana Ribeiro)* com alertas de atraso e upload de evidências.

* **📈 Painel Executivo & Matriz 5x5:** [`painel-executivo.html`](file:///Users/kleitonrodrigues/Documents/OUTROS/Claude/Projects/GitHub/Portal/painel-executivo.html)  
  * **URL:** `https://portal.guardiantechit.com.br/painel-executivo.html`  
  * **Função:** Visão consolidada para a Diretoria *(Mariana Silva)* com Selo de Risco Geral, % de conformidade (20%) e Matriz 5x5.

* **⚖️ Painel QSA Auditor Lead:** [`painel-qsa.html`](file:///Users/kleitonrodrigues/Documents/OUTROS/Claude/Projects/GitHub/Portal/painel-qsa.html)  
  * **URL:** `https://portal.guardiantechit.com.br/painel-qsa.html`  
  * **Função:** Bancada de revisão para o Auditor QSA *(Carlos Costa)* com verificação de integridade SHA-256 e parecer de GAP.

* **👥 Painel Admin Governança:** [`painel-admin.html`](file:///Users/kleitonrodrigues/Documents/OUTROS/Claude/Projects/GitHub/Portal/painel-admin.html)  
  * **URL:** `https://portal.guardiantechit.com.br/painel-admin.html`  
  * **Função:** Painel de gestão da equipe, atribuição automática e congelamento de escopo para o Lead Admin *(Kleiton Rodrigues)*.

* **🔒 Página de Atribuição Multi-Perfil & Escopo:** [`atribuir-requisitos.html`](file:///Users/kleitonrodrigues/Documents/OUTROS/Claude/Projects/GitHub/Portal/atribuir-requisitos.html)  
  * **URL:** `https://portal.guardiantechit.com.br/atribuir-requisitos.html`  
  * **Função:** Tabela de delegação de responsabilidades por área interna.

* **👥 Página de Cadastro da Equipe:** [`cadastro-equipe.html`](file:///Users/kleitonrodrigues/Documents/OUTROS/Claude/Projects/GitHub/Portal/cadastro-equipe.html)  
  * **URL:** `https://portal.guardiantechit.com.br/cadastro-equipe.html`  
  * **Função:** Formulário público para o cliente cadastrar novos membros da equipe.

---

## 3. Modelo de Dados (SQLite & Supabase)

* **`projetos`**: Identificação do projeto (*CSU Digital PCI DSS v4.0.1*).
* **`usuarios_internos`**: Registro da equipe por área (TI, Redes, Dev, DBA, Facilities, RH) e perfil (`operacional`, `executivo`, `auditor`, `admin`).
* **`requisitos_conformidade`**: Relaciona os requisitos com `responsavel_id`, `status` (`pendente`, `em_revisao`, `aceito`, `ajustes`), `comentario_auditor` e `pendencia_gap`.
* **`evidencias`**: Uploads com rastreabilidade de autor e `sha256_hash`.

---

## 4. Passo a Passo de Utilização

1. **Acesso ao Portal:** Acesse `https://portal.guardiantechit.com.br/index.html`.
2. **Demonstração Unificada:** Acesse `demo-perfis-pci.html` para simular as 4 visões no mesmo painel interativo.
3. **Páginas Dedicadas:** Acesse `login.html` para entrar na tela específica de cada usuário.
