"  _     _          ____ _
" | |   (_)_   _   / ___| |__   ___ _ __   __ _
" | |   | | | | | | |   | '_ \ / _ \ '_ \ / _` |
" | |___| | |_| | | |___| | | |  __/ | | | (_| |
" |_____|_|\__,_|  \____|_| |_|\___|_| |_|\__, |
"                                         |___/
"

let mapleader=" "
" syntax highlight
syntax on
" show line number on the left
set number
set relativenumber
" underline current line
set cursorline
set wrap
set showcmd
" smart completion of vim cmd
set wildmenu

" highlight search results
set hlsearch
exec "nohlsearch"
set incsearch
" smart ignore case search
set ignorecase
set smartcase
" compatible with vi operations
set nocompatible
" identification of different file types
filetype on
filetype indent on
filetype plugin on
filetype plugin indent on
" enable mouse
set mouse=a
set encoding=utf-8
" correct theme settings
let &t_ut=''
set expandtab
" tab distance
set tabstop=2
set shiftwidth=2
set softtabstop=2
" show listchars like tab and space
set list
set listchars=tab:►\ ,trail:▫
" indent
set tw=0
set indentexpr=
" when pressing backspace at the start of the line, move the cursor to the end of the previous line
set backspace=indent,eol,start
" fold code block
set foldmethod=indent
set foldlevel=99
" minimum number of lines at bottom and top
set scrolloff=5

set hidden
set updatetime=100
set shortmess+=c
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" cursor appearance
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_SR = "\<Esc>]50;CursorShape=2\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"

set laststatus=2
" change directory to the current file directory automaticaly
set autochdir
" move cursor to the last position when you reopen a file
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

" quick mouse move
noremap H 5h
noremap J 5j
noremap K 5k
noremap L 5l
noremap W 10w
noremap B 10b

" go to the start of the line
noremap <C-h> 0
" go to the end of the line
noremap <C-l> $

" clear search result
noremap <LEADER><CR> :nohlsearch<CR>

" open init.vim
nmap <LEADER>rc :tabe<CR>:e $MYVIMRC<CR>
" open .zsh
nmap <LEADER>zrc :tabe<CR>:e ~/.zshrc<CR>
" save file
map S :w<CR>
map s <nop>

" quit vim
map Q :q<CR>

" reload init.vim
map R :source $MYVIMRC<CR>

" split screen
map <LEADER>sl :set splitright<CR>:vsplit<CR>
map <LEADER>sh :set nosplitright<CR>:vsplit<CR>
map <LEADER>sj :set splitbelow<CR>:split<CR>
map <LEADER>sk :set nosplitbelow<CR>:split<CR>

" find duplicate words
map <LEADER>fd /\(\<\w\+\>\)\_s*\1

" switch window
map <LEADER>l <C-w>l
map <LEADER>k <C-w>k
map <LEADER>h <C-w>h
map <LEADER>j <C-w>j
map <LEADER>w <C-w>w

" spell check
map <LEADER>sc :set spell!<CR>
inoremap <C-x> <ESC>ea<C-x>s

" window size
map <up> :res +5<CR>
map <down> :res -5<CR>
map <left> :vertical resize-5<CR>
map <right> :vertical resize+5<CR>

" open new tab
map tu :tabe<CR>
map th :-tabnext<CR>
map tl :+tabnext<CR>

" switch screen split mode
map sv <C-w>t<C-w>H
map sh <C-w>t<C-w>K

" NerdTree
nnoremap <LEADER>tt :NERDTreeToggle<CR>
nnoremap <LEADER>tf :NERDTreeFind<CR>

" logo figlet
map <LEADER>logo :r !figlet

call plug#begin('~/.vim/plugged')

" smart comment
Plug 'preservim/nerdcommenter'

Plug 'vim-airline/vim-airline'

" LSP Config
Plug 'neovim/nvim-lspconfig'

" Theme
Plug 'morhetz/gruvbox'

" Snippets
Plug 'honza/vim-snippets'

" File navigation
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'Xuyuanp/nerdtree-git-plugin'

" Taglist
Plug 'majutsushi/tagbar', { 'on': 'TagbarOpenAutoClose' }

" kotlin syntax highlight
Plug 'udalov/kotlin-vim'

" Android
Plug 'hsanson/vim-android'

" Error checking
Plug 'w0rp/ale'

" Undo Tree
Plug 'mbbill/undotree/'

" Other visual enhancement
Plug 'nathanaelkane/vim-indent-guides'
Plug 'itchyny/vim-cursorword'

" Auto Complete
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Git
Plug 'rhysd/conflict-marker.vim'
Plug 'tpope/vim-fugitive'
Plug 'mhinz/vim-signify'
Plug 'gisphm/vim-gitignore', { 'for': ['gitignore', 'vim-plug'] }

" HTML, CSS, JavaScript, PHP, JSON, etc.
Plug 'elzr/vim-json'
Plug 'hail2u/vim-css3-syntax'
Plug 'spf13/PIV', { 'for' :['php', 'vim-plug'] }
Plug 'gko/vim-coloresque', { 'for': ['vim-plug', 'php', 'html', 'javascript', 'css', 'less'] }
Plug 'pangloss/vim-javascript', { 'for' :['javascript', 'vim-plug'] }
Plug 'mattn/emmet-vim'

" Python
Plug 'vim-scripts/indentpython.vim'

" Markdown
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install_sync() }, 'for' :['markdown', 'vim-plug'] }
Plug 'dhruvasagar/vim-table-mode', { 'on': 'TableModeToggle' }
Plug 'vimwiki/vimwiki'

" Bookmarks
Plug 'kshenoy/vim-signature'

" Other useful utilities
Plug 'terryma/vim-multiple-cursors'
Plug 'junegunn/goyo.vim' " distraction free writing mode
Plug 'tpope/vim-surround' " type ysks' to wrap the word with '' or type cs'` to change 'word' to `word`
Plug 'godlygeek/tabular' " type ;Tabularize /= to align the =
Plug 'gcmt/wildfire.vim' " in Visual mode, type i' to select all text in '', or type i) i] i} ip
Plug 'scrooloose/nerdcommenter' " in <space>cc to comment a line

" Dependencies
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'kana/vim-textobj-user'
Plug 'fadein/vim-FIGlet'

" Emoji
Plug 'junegunn/vim-emoji'

call plug#end()

color gruvbox

" markdown preview
let g:mkdp_auto_start = 0
let g:mkdp_auto_close = 1
let g:mkdp_refresh_slow = 0
let g:mkdp_command_for_global = 0
let g:mkdp_open_to_the_world = 0
let g:mkdp_open_ip = ''
let g:mkdp_browser = 'chromium'
let g:mkdp_echo_preview_url = 0
let g:mkdp_browserfunc = ''
let g:mkdp_preview_options = {
    \ 'mkit': {},
    \ 'katex': {},
    \ 'uml': {},
    \ 'maid': {},
    \ 'disable_sync_scroll': 0,
    \ 'sync_scroll_type': 'middle',
    \ 'hide_yaml_meta': 1
    \ }
let g:mkdp_markdown_css = ''
let g:mkdp_highlight_css = ''
let g:mkdp_port = ''
let g:mkdp_page_title = '「${name}」'
nnoremap <LEADER>mp :MarkdownPreview<CR>

" Tagbar
map <silent> T :TagbarOpenAutoClose<CR>

" vim-table-mode
map <LEADER>tm :TableModeToggle<CR>

" Undo Tree
nnoremap <F1> :UndotreeToggle<CR>

" vim-indent-guides
let g:indent_guides_enable_on_vim_startup = 1
let g:indnet_guides_color_change_percent = 1
let g:indent_guides_guide_size = 1
let g:indent_guides_start_level = 2

" Android SDK
let g:android_sdk_path = "~/Android/Sdk/"

" Goyo
map <LEADER>gy :Goyo<CR>

" quick selection
nmap <LEADER>s <Plug>(wildfire-quick-select)

" placeholder
func! FindNextPlaceHolder()
  let saved_pos = getcurpos()
  if(line(".") <= search("<++>", 'cw'))
    execute "normal! c4l"
  else
    call setpos(".", saved_pos)
  endif
endfunction
noremap <LEADER><LEADER> :call FindNextPlaceHolder()<CR>i
noremap <LEADER>ph i<++><ESC>


noremap r :call CompileFunction()<CR>

func! CompileFunction()
  exec "w"
  if &filetype == 'c'
    exec "!g++ % -0 %<"
    exec "!time ./%<"
  elseif &filetype == 'cpp'
    set splitbelow
    exec "!g++ -std=c++11 % -Wall -o %<"
    :sp
    :res -15
    :term ./%<
  elseif &filetype == 'cs'
    set splitbelow
    silent! exec "!mcs %"
    :sp
    :res -5
    :term mono %<.exe
  elseif &filetype == 'java'
    set splitbelow
    :sp
    :res -5
    :term javac % && time java %<
  elseif &filetype == 'sh'
    :!time bash %
  elseif &filetype == 'python'
    set splitbelow
    :sp
    :term python3 %
  elseif &filetype == 'html'
    silent! exec "!".g:mkdp_browser." % &"
  elseif &filetype == 'markdown'
    exec "InstantMarkdownPreview"
  elseif &filetype == 'tex'
    silent! exec "VimtexStop"
    silent! exec "VimtexCompile"
  elseif &filetype == 'dart'
    exec "CocCommand flutter.run -d".g:flutter_default_device." ".g:flutter_run_args
    silent! exec "CocCommand flutter.dev.openDevLog"
  elseif &filetype == 'javascript'
    set splitbelow
    :sp
    :term export DEBUG="INFO,ERROR,WARNING"; node --trace-warnings .
  elseif &filetype == 'go'
    set splitbelow
    :sp
    :term go run .
  elseif &filetype == 'kotlin'
    set splitbelow
    :sp
    :term kotlinc % -include-runtime -d %<.jar && java -jar %<.jar
  endif
endfunc

