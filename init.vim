call plug#begin()
" Code actions
" autocomplete
Plug 'neoclide/coc.nvim', {'branch': 'master', 'do': 'yarn install --frozen-lockfile'}
" copilot
Plug 'github/copilot.vim'
" Show outline of symbols
Plug 'liuchengxu/vista.vim'
" Run git commands
Plug 'tpope/vim-fugitive'
" Allow using coc in telescope
Plug 'fannheyward/telescope-coc.nvim'

" Theming
" Status line
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" File icons
Plug 'kyazdani42/nvim-web-devicons' " for file icons
" Rainbow brackets
Plug 'luochen1990/rainbow'
" Show indent guides
Plug 'nathanaelkane/vim-indent-guides'
" Hybrid and absolute line number change
Plug 'jeffkreeftmeijer/vim-numbertoggle'
" Show tmux line at bottom
" Plug 'edkolev/tmuxline.vim'
" Show git signs at the left
Plug 'lewis6991/gitsigns.nvim'
" Allow tmux and vim to be in same line
Plug 'vimpostor/vim-tpipeline'
" Add nord theme
Plug 'arcticicestudio/nord-vim'

" Editing
" Commenting functions (gc)
Plug 'tpope/vim-commentary'
" Close a file with ,b
Plug 'moll/vim-bbye'
" Multi editing
Plug 'mg979/vim-visual-multi'
" Clipboard to system
Plug 'ojroques/vim-oscyank'
" Allow editing in block (sa, sd, sr)
Plug 'machakann/vim-sandwich'
" Show help for a command
Plug 'folke/which-key.nvim'
" Show cheatsheet with ,?
Plug 'sudormrfbin/cheatsheet.nvim'
" Give additonal targets, like ) so ci)
Plug 'wellle/targets.vim'
" Unhighlight things when search ends
Plug 'romainl/vim-cool'
" Use folding/collapse things
Plug 'kevinhwang91/promise-async'
Plug 'kevinhwang91/nvim-ufo'

" Multi-file
" Show file tree
Plug 'kyazdani42/nvim-tree.lua'
" Telescope setup to search
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }
" Add automatic session management
Plug 'tpope/vim-obsession'
Plug 'dhruvasagar/vim-prosession'
" Automatic sizing of splits
Plug 'beauwilliams/focus.nvim'

" Navigating
" Allow jumping between vim and tmux
Plug 'kusti8/vim-tmux-navigator'
" Navigate using f key through entire file
Plug 'ggandor/leap.nvim'
" Use floating terminal inside vim
Plug 'voldikss/vim-floaterm'
" Show a scrollbar
Plug 'dstein64/nvim-scrollview'
" Smooth scrolling
Plug 'karb94/neoscroll.nvim'

" File specific
" SML suppott
Plug 'jez/vim-better-sml'
" Syntax highlighting for multiple files
Plug 'sheerun/vim-polyglot'
" Markdown preview
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install' }
call plug#end()

" set the filetype for a file, load the filetype plugin and indent file
filetype plugin indent on
" enable syntax highlighting
syntax on

" Use % to go to the matching statement (like parens)
runtime macros/matchit.vim

" Auto indent on newline
set autoindent
" backspace over indentation and line
set backspace=indent,eol,start
" necessary for buffers
set hidden
" move highlight as you keep searching
set incsearch
" show location, line col in file
set ruler
" no word wrap
set wrap
" set the width of a hard tab character
set linebreak
" make it not wrap in the middle of a "word"
set tabstop=4
" set width of a level of indentation
set shiftwidth=4
" copy previous indent for autoindenting
set copyindent
" round indentation to nearest multiple
set shiftround
" expand tab into tabstop
set expandtab
" not really necessary
set smarttab
" cursor jumps to beginning of block
set showmatch
" ignore case in searching
set ignorecase
" ignore case on all lowercase
set smartcase
" highlight search matches
set hlsearch
" allow mouse to resize splits
set mouse=a

" set command history
set history=10000
" set amount of undo to save
set undolevels=10000
" set directory to save all undo
set undodir=~/.config/nvim/undodir
" save undo history in a file
set undofile

" use command line completion
set wildmenu

" keep cursor in same column
set nostartofline

" use system clipboard
set clipboard=unnamedplus

" set leader key to comma
let mapleader=","

source ~/.config/nvim/code-actions.vim
source ~/.config/nvim/editing.vim
source ~/.config/nvim/file-specifics.vim
source ~/.config/nvim/multifile.vim
source ~/.config/nvim/navigating.vim
source ~/.config/nvim/theming.vim
