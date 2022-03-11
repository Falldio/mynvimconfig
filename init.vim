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
" set cursorline
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
map bh :bprevious<CR>
map bl :bnext<CR>

" switch screen split mode
map sv <C-w>t<C-w>H
map sh <C-w>t<C-w>K

" logo figlet
map <LEADER>logo :r !figlet

call plug#begin('~/.vim/plugged')

" smart comment
Plug 'preservim/nerdcommenter'

" file navigation
Plug 'preservim/nerdtree', { 'on': 'NERDTreeToggle' } |
            \ Plug 'Xuyuanp/nerdtree-git-plugin' |
            \ Plug 'ryanoasis/vim-devicons'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

" statusline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Theme
Plug 'morhetz/gruvbox'

" Snippets
Plug 'honza/vim-snippets'

" Taglist
Plug 'majutsushi/tagbar', { 'on': 'TagbarOpenAutoClose' }

" kotlin syntax highlight
Plug 'udalov/kotlin-vim'

" Android
Plug 'hsanson/vim-android'

" Error checking
Plug 'dense-analysis/ale'

" Undo Tree
Plug 'mbbill/undotree'

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

" Python
Plug 'vim-scripts/indentpython.vim'

" Markdown
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install_sync() }, 'for' :['markdown', 'vim-plug'] }
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

" start screen
Plug 'mhinz/vim-startify'

call plug#end()

" color theme
color gruvbox

" vim-airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme = 'base16_gruvbox_dark_hard'
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#formatter = 'unique_tail_improved'
" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'

" powerline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''

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
    exec "MarkdownPreview"
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

" Nerd Commenter
" Create default mappings
let g:NERDCreateDefaultMappings = 1

" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1

" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'

" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1

" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }

" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

" Enable NERDCommenterToggle to check all selected lines is commented or not
let g:NERDToggleCheckAllLines = 1

noremap <C-c> :call nerdcommenter#Comment('n', 'toggle')<CR>

" Code snippets
" Use <C-l> for trigger snippet expand.
imap <C-l> <Plug>(coc-snippets-expand)

" Use <C-j> for select text for visual placeholder of snippet.
vmap <C-j> <Plug>(coc-snippets-select)

" Use <C-k> for jump to previous placeholder, it's default of coc.nvim
let g:coc_snippet_prev = '<c-k>'

" Use <C-j> for both expand and jump (make expand higher priority.)
imap <C-j> <Plug>(coc-snippets-expand-jump)

" Use <leader>x for convert visual selected code to snippet
xmap <leader>x  <Plug>(coc-convert-snippet)

inoremap <silent><expr> <TAB>
      \ pumvisible() ? coc#_select_confirm() :
      \ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

let g:coc_snippet_next = '<tab>'

" FZF
nmap <LEADER>f :FZF<CR>


let g:NERDTreeGitStatusUseNerdFonts = 1 " you should install nerdfonts by yourself. default: 0
" NerdTree
nnoremap tt :NERDTreeToggle<CR>
nnoremap tf :NERDTreeFind<CR>

" nerdtree git plugin
" Can be enabled or disabled
let g:webdevicons_enable_nerdtree = 1
" show clean indicator
let g:NERDTreeGitStatusShowClean = 0 " default: 0
" whether or not to show the nerdtree brackets around flags
let g:webdevicons_conceal_nerdtree_brackets = 1
let g:NERDTreeGitStatusIndicatorMapCustom = {
                \ 'Modified'  :'✹',
                \ 'Staged'    :'✚',
                \ 'Untracked' :'✭',
                \ 'Renamed'   :'➜',
                \ 'Unmerged'  :'═',
                \ 'Deleted'   :'✖',
                \ 'Dirty'     :'✗',
                \ 'Ignored'   :'☒',
                \ 'Clean'     :'✔︎',
                \ 'Unknown'   :'?',
                \ }

" nerdtree syntax highlight
let g:NERDTreeHighlightFolders = 1 " enables folder icon highlighting using exact match
let g:NERDTreeHighlightFoldersFullName = 1 " highlights the folder name
" you can add these colors to your .vimrc to help customizing
let s:brown = "905532"
let s:aqua =  "3AFFDB"
let s:blue = "689FB6"
let s:darkBlue = "44788E"
let s:purple = "834F79"
let s:lightPurple = "834F79"
let s:red = "AE403F"
let s:beige = "F5C06F"
let s:yellow = "F09F17"
let s:orange = "D4843E"
let s:darkOrange = "F16529"
let s:pink = "CB6F6F"
let s:salmon = "EE6E73"
let s:green = "8FAA54"
let s:lightGreen = "31B53E"
let s:white = "FFFFFF"
let s:rspec_red = 'FE405F'
let s:git_orange = 'F54D27'

let g:NERDTreeExtensionHighlightColor = {} " this line is needed to avoid error
let g:NERDTreeExtensionHighlightColor['css'] = s:blue " sets the color of css files to blue

let g:NERDTreeExactMatchHighlightColor = {} " this line is needed to avoid error
let g:NERDTreeExactMatchHighlightColor['.gitignore'] = s:git_orange " sets the color for .gitignore files

let g:NERDTreePatternMatchHighlightColor = {} " this line is needed to avoid error
let g:NERDTreePatternMatchHighlightColor['.*_spec\.rb$'] = s:rspec_red " sets the color for files ending with _spec.rb

let g:WebDevIconsDefaultFolderSymbolColor = s:beige " sets the color for folders that did not match any rule
let g:WebDevIconsDefaultFileSymbolColor = s:blue " sets the color for files that did not match any rule

" ALE
" In ~/.vim/vimrc, or somewhere similar.
let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'javascript': ['eslint'],
\}
" Set this variable to 1 to fix files when you save them.
let g:ale_fix_on_save = 1

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" Make <CR> auto-select the first completion item and notify coc.nvim to
" format on enter, <cr> could be remapped by other vim plugin
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code.
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)
