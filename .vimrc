set nocompatible
filetype off                  " required
syntax on

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
set rtp+=/etc/fonts/conf.d/10-powerline-symbols.conf
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" NEEEEW plugins
" -- COLOR SCHEMES
Plugin 'jpo/vim-railscasts-theme'
Plugin 'carakan/new-railscasts-theme'
Plugin 'crusoexia/vim-monokai'
Plugin 'chriskempson/base16-vim'
Plugin 'hzchirs/vim-material'
Plugin 'aonemd/kuroi.vim'
Plugin 'morhetz/gruvbox'
Plugin 'eemed/sitruuna.vim'
Plugin 'jdsimcoe/panic.vim'
Plugin 'artanikin/vim-synthwave84'
Plugin 'arzg/vim-colors-xcode'
" -- FZF search
Plugin 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plugin 'junegunn/fzf.vim'
" -- CtrlP
" Plugin 'ctrlpvim/ctrlp.vim'
" -- Status line
Plugin 'itchyny/lightline.vim'
" -- Nerdtree
Plugin 'scrooloose/nerdtree' 
Plugin 'Xuyuanp/nerdtree-git-plugin'
" -- Ranger instead of Nerdtree
Plugin 'fabi1cazenave/termopen.vim'
Plugin 'francoiscabrol/ranger.vim'
Plugin 'rbgrouleff/bclose.vim'
" -- Commenter
Plugin 'tpope/vim-commentary'
" -- Auto-end close
Plugin 'tpope/vim-endwise'
" -- Buffer explorer
Plugin 'jlanzarotta/bufexplorer'
" -- Buffer navigation
Plugin 'tpope/vim-unimpaired'
" -- Git diffs markers
Plugin 'airblade/vim-gitgutter'
" -- Git commands from :Gcommand
Plugin 'tpope/vim-fugitive'
" -- Search of TODOs, FIXmes
Plugin 'gilsondev/searchtasks.vim'
" -- Tags for navigation to definition
Plugin 'ludovicchabant/vim-gutentags'
" -- Tagbar
Plugin 'majutsushi/tagbar'
" -- Expanding abbreviations
Plugin 'mattn/emmet-vim', { 'for': ['html', 'css', 'htmldjango', 'scss','eruby','less'] }
" -- Editorconfig
Plugin 'editorconfig/editorconfig-vim'
" -- Searcher
Plugin 'mileszs/ack.vim'
" -- Linter && Language server
Plugin 'w0rp/ale'
Plugin 'crusoexia/vim-javascript-lib', { 'for': ['js', 'html', 'erb'] }
Plugin 'tpope/vim-rails', { 'for': ['rb', 'erb'] }
Plugin 'tpope/vim-rake', { 'for': 'rb' }
" -- Ruby goto definitions inside ruby and gems' files
Plugin 'vim-ruby/vim-ruby'
Plugin 'tpope/vim-rbenv'
Plugin 'tpope/vim-bundler'
Plugin 'kana/vim-textobj-user'
Plugin 'nelstrom/vim-textobj-rubyblock', { 'for': ['rb', 'eruby'] }
Plugin 'tpope/vim-sensible'
Plugin 'tpope/vim-surround'
Plugin 'davidhalter/jedi-vim'
Plugin 'sheerun/vim-polyglot' 
" Deal with large files
Plugin 'vim-scripts/LargeFile'
" Marked indents
Plugin 'nathanaelkane/vim-indent-guides'


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" << EDITOR CONFIGS
if $TERM == "xterm-256color"
  set t_Co=256
endif
if $TRUECOLOR_TERM == 1 
  set termguicolors
endif
set nu rnu
set grepprg=ack
set showcmd 
set hidden
" Spaces for tabs
set tabstop=2 shiftwidth=2 softtabstop=2 expandtab
" Set default clipboard for vim copy
set clipboard=unnamedplus
" Colorscheme
set background=dark
colorscheme xcodedark
set cursorline
set foldmethod=syntax
set ignorecase
set smartcase
" Folding {{{
set foldenable
set foldlevelstart=10
set foldnestmax=10
" Show invisible characters
set listchars=eol:¬,tab:>·,trail:~,extends:>,precedes:<,space:·
set list
" EDITOR CONFIGS >>

" << LETS
let g:material_style='palenight'
let g:Powerline_symbols = "fancy"
let g:ranger_map_keys=0

" let g:ranger_replace_netrw = 1 " open ranger when vim open a directory
" let g:ranger_on_exit = 'bw!'
" let g:ranger_replace_netrw = 1
" 
" Lightline
let g:lightline = {
	\ 'colorscheme': 'sitruuna',
	\ 'active': {
	\   'left': [['mode', 'paste'], ['filename', 'modified']],
	\   'right': [['lineinfo'], ['percent'], ['readonly', 'linter_warnings', 'linter_errors', 'linter_ok']]
	\ },
	\ 'component_expand': {
	\   'linter_warnings': 'LightlineLinterWarnings',
	\   'linter_errors': 'LightlineLinterErrors',
	\   'linter_ok': 'LightlineLinterOK'
	\ },
	\ 'component_type': {
	\   'readonly': 'error',
	\   'linter_warnings': 'warning',
	\   'linter_errors': 'error'
	\ },
	\ }

" Gitgutter
let g:gitgutter_terminal_reports_focus=0
let g:gitgutter_sign_added = '∙'
let g:gitgutter_sign_modified = '∙'
let g:gitgutter_sign_removed = '∙'
let g:gitgutter_sign_modified_removed = '∙'

let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-i': 'split',
  \ 'ctrl-s': 'vsplit' }
let g:fzf_layout = { 'down': '~30%' }

let g:rg_command = '
  \ rg --column --line-number --no-heading --fixed-strings --ignore-case --no-ignore --hidden --follow --color "always"
  \ -g "*.{ts,js,json,php,md,styl,pug,jade,html,config,py,cpp,c,go,hs,rb,conf,fa,lst}"
  \ -g "!{.config,.git,node_modules,vendor,build,yarn.lock,*.sty,*.bst,*.coffee,dist}/*" '
if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

" ALE linter settings
let g:ale_linters = {
 \ 'ruby': ['rubocop'],
 \ } 

" NerdTree -- show hidden files by default
let NERDTreeShowHidden=1
" Enable intent markings
let g:indent_guides_enable_on_vim_startup = 1
" LETS >>

" << MAPPINGS
" -- Ranger
nmap <leader>n :call TermOpenRanger()<CR>
" -- FZF
nmap <C-p> :Files<cr>
nmap <Leader>b :Buffers<cr>
imap <c-x><c-l> <plug>(fzf-complete-line)
nmap <F8> :TagbarToggle<CR> 
map <C-n> :NERDTreeToggle<CR> 
nnoremap <silent> <Leader>u :exe "resize +5"<CR>
nnoremap <silent> <Leader>i :exe "resize -5"<CR>
nnoremap <silent> <Leader>o :exe "vertical resize +5"<CR>
nnoremap <silent> <Leader>y :exe "vertical resize -5"<CR>
cnoreabbrev Ack Ack!
nnoremap <silent> <Leader>f :Ack!<Space>

" Lightline functions
function! LightlineLinterWarnings() abort
  let l:counts = ale#statusline#Count(bufnr(''))
  let l:all_errors = l:counts.error + l:counts.style_error
  let l:all_non_errors = l:counts.total - l:all_errors
  return l:counts.total == 0 ? '' : printf('%d ◆', all_non_errors)
endfunction

function! LightlineLinterErrors() abort
  let l:counts = ale#statusline#Count(bufnr(''))
  let l:all_errors = l:counts.error + l:counts.style_error
  let l:all_non_errors = l:counts.total - l:all_errors
  return l:counts.total == 0 ? '' : printf('%d ✗', all_errors)
endfunction

function! LightlineLinterOK() abort
  let l:counts = ale#statusline#Count(bufnr(''))
  let l:all_errors = l:counts.error + l:counts.style_error
  let l:all_non_errors = l:counts.total - l:all_errors
  return l:counts.total == 0 ? '✓ ' : ''
endfunction

autocmd User ALELint call s:MaybeUpdateLightline()
" -- Close vim automatically if Nerdtree is the last window
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Update and show lightline but only if it's visible (e.g., not in Goyo)
function! s:MaybeUpdateLightline()
  if exists('#lightline')
    call lightline#update()
  end
endfunction

