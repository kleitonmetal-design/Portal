# Portal GuardianTech

Site estático (HTML + CSS + JS puro) hospedado no GitHub Pages, publicado em
`portal.guardiantechit.com.br`. Sem build, sem framework, sem npm.

## Estrutura
- `index.html` — página principal. Busca links no Supabase e monta menu + cards.
- `sistemas.html`, `paineis-pci.html`, `chilli-beans.html`, `simulados.html` — páginas de categoria.
- `Simulado*.html` — simulados ISO 27001, arquivos grandes e autocontidos.
- `painel_roc_zup_updated_1.html` — dashboard dinâmico do ROC (PCI DSS) da ZUP.
  Ver seção "Painel ROC ZUP (dinâmico)" abaixo.
- `painel_roc_csu_dinamico.html` — dashboard dinâmico do ROC (PCI DSS) da CSU.
  Ver seção "Painel ROC CSU (dinâmico)" abaixo.
- `painel_roc_csu.html` — versão antiga/estática do painel CSU, mantida no ar
  sem alteração (não sobrescrever, só adicionar).
- Deploy: todo push em `main` publica automaticamente via GitHub Pages. Não existe
  ambiente de staging — o que vai pro `main` fica visível no site em minutos.

## Painel ROC ZUP (dinâmico)
Dashboard que mostra status de preenchimento do ROC PCI DSS v4.0.1 da ZUP.
Atualiza sozinho a cada 30s via `fetch()`, sem precisar recarregar a página.

- **Arquivo:** `painel_roc_zup_updated_1.html`
- **URL pública:** `portal.guardiantechit.com.br/painel_roc_zup_updated_1.html`
- **Acesso no portal:** menu "Painéis PCI DSS" → card "Painel PCI DSS: ZUP ROC (Dinâmico)"
- **Fonte dos dados:** workflow n8n "ROC Status API" (id `w8yV8wOmXDAZQB9L`), via
  webhook `https://n8n.guardiantechit.com.br/webhook/1cb9a3a5-aebe-45a8-aea6-4f6376f0303c`
  — **atenção:** é o ID do *webhook*, não do workflow. Confundir os dois já causou bug
  (zero execuções, painel nunca recebia resposta).
- Hoje os dados no n8n (node "Seed ROC Data") são **hardcoded manualmente** — não lê
  o `.docx` do ROC em tempo real. Alguém precisa atualizar o JSON à mão quando o ROC muda.
- **Nunca hospedar este tipo de painel como Claude Artifact.** Artifacts bloqueiam
  `fetch`/`XHR` para domínios externos (CSP) e a chamada falha silenciosamente,
  sem erro visível — só cai no `catch()`. Por isso é arquivo estático no GitHub Pages.
- Editar workflow n8n ou tabela `links` do Supabase: use as MCP tools
  (`mcp__n8n__*`, `mcp__Supabase__*`) direto, sem passo manual.
- Editar o `.html` do painel: mesmo fluxo de qualquer outro arquivo deste repo
  (commit + push em `main`). Se `git push` for bloqueado pelo proxy da sessão,
  avise o usuário — o workaround é upload manual pela interface web do GitHub.

## Painel ROC CSU (dinâmico)
Mesmo padrão do painel ZUP: dashboard que mostra status de preenchimento do
ROC PCI DSS v4.0.1 da CSU Digital S/A, atualizado a cada 30s via `fetch()`.

- **Arquivo:** `painel_roc_csu_dinamico.html`
- **Acesso no portal:** menu "Painéis PCI DSS" → card "Painel PCI DSS: CSU ROC (Dinâmico)"
- **Fonte dos dados:** workflow n8n "ROC Status API - CSU" (id `5KCTDqnrlcoi4eYf`), via
  webhook `https://n8n.guardiantechit.com.br/webhook/ba60e66c-d57c-4953-8ea9-1ac66adb7186`
  — de novo, é ID do *webhook*, não do workflow.
- **Diferença em relação ao ZUP:** este workflow já nasceu com a expressão correta
  no node de resposta (`JSON.parse($input.first().json.rocData)`) — não teve o bug
  de duplo-embrulho JSON que o ZUP teve. Não precisa reaplicar essa correção aqui.
- Cada card mostra "ver pendências →" com a lista de `unfilled_ids` (sub-requisitos
  ainda sem Assessment Finding e/ou evidência completa), diferente do painel ZUP.
- O painel antigo `painel_roc_csu.html` (estático, sem API) foi mantido no ar sem
  alteração — mesma regra do ZUP: nunca sobrescrever o que já funciona, só adicionar.
- Linha correspondente na tabela `links` do Supabase: id `fbceb6e4-4d57-4c93-8b3b-5380c2452bb8`.
- Mesmas regras de Claude Artifact e fluxo de edição do painel ZUP, acima.

## Dados
- Backend é Supabase (tabela `links`). URL e chave pública ficam hardcoded no
  `index.html` (é a chave pública, não é segredo).
- Categorias e ordem vêm do banco, não do HTML.

## Fluxo de trabalho
1. Editar HTML/CSS/JS.
2. Testar visualmente antes de commitar — abrir o arquivo local no navegador
   ou usar a skill `run`/Playwright. Nunca commitar mudança de CSS/JS sem ver
   rodando primeiro.
3. Apresentar ao usuário um resumo de alto nível da mudança, no formato de
   descrição de PR, e aguardar aprovação explícita antes de commitar:
   - **O que muda** (bullets, direto ao ponto)
   - **Arquivo(s) afetado(s)**
   - **Por quê** (motivação, se não for óbvio)
   Vale para qualquer mudança em arquivo versionado, inclusive correções
   pequenas — não só para features grandes. Não existe PR real neste
   projeto (deploy é direto em `main`), então essa é a aprovação que
   substitui a revisão de PR: só commitar depois que o usuário confirmar
   (ex: "pode commitar", "ok", "manda").
4. Commit direto em `main` (não há PR review neste projeto — é site de uso
   próprio; o passo 3 acima faz esse papel na conversa).
5. Push. Deploy é automático.

## Armadilhas conhecidas
- **`.nav-categories` tem `overflow-x: auto`** → isso força `overflow-y: auto`
  também (regra do CSS), cortando qualquer dropdown que exceda a altura do
  header. Por isso `.nav-dropdown` usa `position: fixed` com posição calculada
  via JS (`getBoundingClientRect()`), não `position: absolute`.
- Antes de dizer "corrigido" para qualquer mudança visual (CSS, layout, dropdown),
  comprovar rodando a página, não só ler o código e assumir que vai funcionar.
- Não adicionar `console.log` de debug como primeira tentativa — testar local
  primeiro (Playwright ou abrir o HTML direto) é mais rápido que ida-e-volta
  de deploy.

## Git
- Branch principal: `main`. É nela que o deploy acontece.

### Marcação de Commits por Origem
Toda mensagem de commit começa com prefixo indicando a ferramenta que a gerou, para facilitar rastreamento nos logs de deploy. Além do prefixo, autor e e-mail do commit também são sobrescritos por origem, para diferenciar mesmo quando alguém lê só as colunas `author`/`author_email` (ex: exportações do GitHub, planilhas):

| Origem | Prefixo na mensagem | Autor do commit | E-mail |
|--------|---------------------|------------------|--------|
| Claude Code | `[claude]` | `Claude` | `noreply@anthropic.com` |
| Antigravity IDE | `[antigravity]` | `Antigravity IDE` | `antigravity-ide@guardiantechit.com.br` |
| Manual / git CLI direto | *(sem prefixo)* | `kleitonmetal-design` (identidade local da máquina) | — |
| Futuras ferramentas | `[ferramentanome]` (ex: `[n8n]`, `[zapier]`) | a definir por ferramenta | a definir |

Exemplos:
- Commit direto: `[claude] fix: recalculate requirement percentage on ROC panel`
- PR merge: `Merge pull request #15: [claude] feat: add new dashboard link`
- Antigravity: `[antigravity] refactor: improve card styling on dashboard`

**Aplicável a:** commits diretos em main + títulos de PR + merge commits

**Como funciona (implementação técnica):**
- Os hooks ficam versionados em `.githooks/` (não em `.git/hooks/`, que não é
  rastreado pelo Git e some a cada clone novo — inclusive a cada sessão nova
  do Claude Code, que roda em container efêmero).
- `.githooks/prepare-commit-msg` detecta a origem (variáveis de ambiente,
  nome do processo pai, `git config user.name`) e adiciona o prefixo
  `[origem]` na mensagem, se ainda não tiver.
- `.githooks/post-commit` lê o prefixo da mensagem do commit recém-criado e,
  se o autor não bater com o mapeamento acima, reescreve autor/e-mail via
  `git commit --amend --no-edit --no-verify --reset-author` (um hook não
  consegue mudar o autor do commit que ele mesmo está processando — só
  depois, via amend). `--reset-author` é obrigatório: sem ele o amend ignora
  `GIT_AUTHOR_*` e mantém o autor original, o que faz a condição de parada
  nunca ficar verdadeira e entra em loop infinito de amends — já aconteceu
  durante o desenvolvimento deste sistema e travou a sessão até os processos
  serem mortos manualmente. O hook também tem uma trava de reentrância
  (`GITHOOKS_POST_COMMIT_LOCK`) como segunda camada de proteção contra loop.
- **Ativação obrigatória, uma vez por máquina** (não acontece sozinho ao
  clonar): `git config core.hooksPath .githooks`. Sem isso os hooks existem
  no repo mas ficam inertes — foi exatamente isso que aconteceu antes: o
  hook de prefixo foi commitado (PR #13) mas nunca ativado em lugar nenhum,
  e mesmo assim aparecia funcionando nos commits do Antigravity — o que
  sugere que a própria ferramenta pode ter ativado localmente por conta
  própria, então confirme com `git config core.hooksPath` antes de assumir
  que está inativo.
- Claude Code não precisa desse passo: a identidade de commit (`Claude
  <noreply@anthropic.com>`) já vem configurada automaticamente pelo próprio
  ambiente de sessão, sem depender de hook local. O `post-commit` cobre o
  caso `[claude]` como rede de segurança, não como mecanismo principal.
- Antigravity IDE: rodar `git config core.hooksPath .githooks` uma vez na
  máquina onde o Antigravity roda. Se o Antigravity tiver uma opção nativa
  de "commit author override" nas configurações, prefira usá-la — é mais
  confiável que a heurística de detecção do hook (que depende de variável
  de ambiente ou nome de processo pai, e pode falhar silenciosamente se o
  Antigravity não expuser nenhum sinal detectável).

- Não fazer force-push sem confirmar com o usuário antes.

## Manual do projeto (Supabase)
Existe um manual completo do portal salvo na tabela `documentos` do
Supabase (`portal-guardiantech`, `zprzmhavbjiggqfzzzbt`), registro com
`slug = 'manual-portal'`. É a documentação de referência do projeto inteiro
(arquitetura, tabelas, painéis, fluxo de trabalho).

**Regra permanente:** toda vez que uma mudança no projeto tornar esse
manual desatualizado — nova página, nova integração, novo painel, mudança
de arquitetura ou de fluxo — atualizar esse registro no banco na mesma
sessão, sem esperar o usuário pedir. Fazer via `UPDATE documentos SET
conteudo = ..., updated_at = now() WHERE slug = 'manual-portal'` (MCP
`mcp__Supabase__execute_sql`).
