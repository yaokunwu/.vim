set smartindent
set expandtab
filetype plugin on
syntax on
set cursorline
let mapleader = " "
filetype plugin indent on
set tabstop=4
set shiftwidth=4
map <up> :res +5<CR>
map <down> :res -5<CR>
map <left> :vertical resize-5<CR>
map <C-q> :+tabnext<CR>
map <C-e> :-tabnext<CR>
map <C-T> :tabe<CR>
map <right> :vertical resize+5<CR>
if $TERM_PROGRAM =~ "iTerm"
    let &t_SI = "\<Esc>]50;CursorShape=1\x7" " Vertical bar in insert mode
endif
set number
set relativenumber
set wildmenu
set wrap
setlocal formatoptions=tacqw
setlocal textwidth=80
setlocal wrapmargin=0
set showcmd
setlocal autoindent
set nocompatible
noremap , 5k
imap {<CR> {}<ESC>i<CR><TAB><ESC>V<O<TAB>
imap () ()<ESC>i<right>
imap ( ()<ESC>i
noremap . 5j
map s :<nop>
map S :w<CR>

map <LEADER>i <C-w>l
map <LEADER>u <C-w>k
map <LEADER>n <C-w>h
map <LEADER>e <C-w>j
au BufEnter * silent! !xmodmap -e 'clear Lock' -e 'keycode 0x42 = Escape'
au BufLeave * silent! !xmodmap -e 'clear Lock' -e 'keycode 0x42 = Caps_Lock'
map Q :q<CR>
map R :source $MYVIMRC<CR>
map si :set splitright<CR>:vsplit<CR>
map sn :set nosplitright<CR>:vsplit<CR>
map su :set nosplitbelow<CR>:split<CR>
map se :set splitbelow<CR>:split<CR>

set hlsearch
exec "nohlsearch"
noremap n nzz
noremap N Nzz
set incsearch
set ignorecase
set smartcase
noremap <LEADER><CR> :nohlsearch<CR>
set backspace=indent,eol,start
call plug#begin('~/.vim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'vimwiki/vimwiki'
Plug 'preservim/nerdtree'
Plug 'connorholyday/vim-snazzy'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
call plug#end()


map ff :NERDTreeToggle<CR>
let NERDTreeMapOpenExpl = ""
let NERDTreeMapUpdir = ""
let NERDTreeMapUpdirKeepOpen = "l"
let NERDTreeMapOpenSplit = ""
let NERDTreeOpenVSplit = ""
let NERDTreeMapActivateNode = "i"
let NERDTreeMapOpenInTab = "o"
let NERDTreeMapPreview = ""
let NERDTreeMapCloseDir = "n"
let NERDTreeMapChangeRoot = "y"

map F :MarkdownPreview
map C :MarkdownPreviewStop
let g:mkdp_auto_start = 0
let g:mkdp_auto_close = 1
let g:mkdp_refresh_slow = 0
let g:mkdp_command_for_global = 0
let g:mkdp_open_to_the_world = 0
let g:mkdp_browser = 'chromium-browser'
let g:mkdp_echo_preview_url = 0
let g:mkdp_browserfunc = ''
let g:mkdp_open_ip = ''

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
let g:vimwiki_list = [{'path': '~/vimwiki/',
                      \ 'syntax': 'markdown', 'ext': '.md'}]
