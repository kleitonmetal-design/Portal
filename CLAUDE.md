# Portal GuardianTech

Site estático (HTML + CSS + JS puro) hospedado no GitHub Pages, publicado em
`portal.guardiantechit.com.br`. Sem build, sem framework, sem npm.

## Estrutura
- `index.html` — página principal. Busca links no Supabase e monta menu + cards.
- `sistemas.html`, `paineis-pci.html`, `chilli-beans.html`, `simulados.html` — páginas de categoria.
- `Simulado*.html` — simulados ISO 27001, arquivos grandes e autocontidos.
- Deploy: todo push em `main` publica automaticamente via GitHub Pages. Não existe
  ambiente de staging — o que vai pro `main` fica visível no site em minutos.

## Dados
- Backend é Supabase (tabela `links`). URL e chave pública ficam hardcoded no
  `index.html` (é a chave pública, não é segredo).
- Categorias e ordem vêm do banco, não do HTML.

## Fluxo de trabalho
1. Editar HTML/CSS/JS.
2. Testar visualmente antes de commitar — abrir o arquivo local no navegador
   ou usar a skill `run`/Playwright. Nunca commitar mudança de CSS/JS sem ver
   rodando primeiro.
3. Commit direto em `main` (não há PR review neste projeto — é site de uso próprio).
4. Push. Deploy é automático.

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
- Não fazer force-push sem confirmar com o usuário antes.
