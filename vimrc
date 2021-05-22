syntax on

" Editing behaviour {{{
"set relativenumber
"set showmode                    " always show what mode we're currently editing in
"set nowrap                      " don't wrap lines
set tabstop=4                   " a tab is four spaces
set softtabstop=4               " when hitting <BS>, pretend like a tab is removed, even if spaces
set expandtab                   " expand tabs by default (overloadable per file type later)
set shiftwidth=4                " number of spaces to use for autoindenting
set shiftround                  " use multiple of shiftwidth when indenting with '<' and '>'
"set backspace=indent,eol,start  " allow backspacing over everything in insert mode
set autoindent                  " always set autoindenting on
set copyindent                  " copy the previous indentation on autoindenting
set number                      " always show line numbers
"set showmatch                   " set show matching parenthesis
set ignorecase                  " ignore case when searching
set smartcase                   " ignore case if search pattern is all lowercase,
                                "    case-sensitive otherwise
set smarttab                    " insert tabs on the start of a line according to
                                "    shiftwidth, not tabstop
set scrolloff=4                 " keep 4 lines off the edges of the screen when scrolling
"set virtualedit=all             " allow the cursor to go in to "invalid" places
"set hlsearch                    " highlight search terms
"set incsearch                   " show search matches as you type
set gdefault                    " search/replace "globally" (on a line) by default
"set listchars=tab:▸\ ,trail:·,extends:#,nbsp:·

"set nolist                      " don't show invisible characters by default,
                                " but it is enabled for some file types (see later)
"set pastetoggle=<F2>            " when in insert mode, press <F2> to go to
                                "    paste mode, where you can paste mass data
                                "    that won't be autoindented
"set mouse=a                     " enable using the mouse if terminal emulator
                                "    supports it (xterm does)       
"set fileformats="unix,dos,mac"
"set formatoptions+=1            " When wrapping paragraphs, don't end lines
                                "    with 1-letter words (looks stupid)


"set shortmess+=I                " hide the launch screen
"set clipboard=unnamed           " normal OS clipboard interaction
