"-----------------------------------------------------------------------
" heavenk21 .vimrc
"
" https://github.com/heavenk21/vimrc.git
"-----------------------------------------------------------------------

"-----------------------------------------------------------------------
" Vim Plugin Settings
"-----------------------------------

"-----------------------------------
" Vundle Settings
"-----------------

" Install Vundle prior to following setting
"  git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim

" Activate Vi Improved Functions
set nocompatible
" Setting in accordance to nocompatible
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
" alternatively, pass a path where Vundle should install plugins
"  e.g.) vundle#begin('~/some/path/here')
call vundle#begin()

" let Vundle manage Vundle
Plugin 'gmarik/Vundle.vim'
" Vim-Fugitive : Git Wrapper
Plugin 'tpope/vim-fugitive'
" Vim-Airline : Improved Status Line
Plugin 'bling/vim-airline'
" The NERD Tree : Tree File System Explorer
Plugin 'scrooloose/nerdtree'
" Jedi-Vim : Python Auto Completion Library
Plugin 'davidhalter/jedi-vim'
" virtualenv.vim : Python virtualenv Enabler
Plugin 'jmcantrell/vim-virtualenv'
" Vim-Colors-Solarized : Color Scheme of Choice
Plugin 'altercation/vim-colors-solarized'
" unite.vim : Integrated Search Module
Plugin 'Shougo/unite.vim'
" vimproc.vim : Interactive Command Execution
Plugin 'Shougo/vimproc.vim'
" scala plugin
Plugin 'derekwyatt/vim-scala'

" All Plugins to be added between vundle#begin and vundle#end
call vundle#end()
" turn filetype (for plugin and indent) back on
filetype plugin indent on
"-----------------------------------

"-----------------------------------
" Airline Settings
"-----------------
" powerline symbols
let g:airline_powerline_fonts=1
" display buffers like tabs
"let g:airline#extensions#tabline#enabled=1
" fixes bug of airline activating from second split
set laststatus=2
"
"-----------------------------------

"-----------------------------------
" Solarized Settings
"-----------------
" visibility of characters affected by the set list option
let g:solarized_visibility="low"
" enabling recommended when iTerm profile color is set to solarized
let g:solarized_termcolors=16
" enable the solarized color scheme
colorscheme solarized
"
"-----------------------------------
"
"-----------------------------------
" Unite Settings
"-----------------
" recursive file search
nnoremap <C-p> :Unite file_rec/async<cr>
" content search using vimproc (vimproc installation required)
nnoremap <space>/ :Unite grep:.<cr>
" yank history search
let g:unite_source_history_yank_enable = 1
nnoremap <space>y :Unite history/yank<cr>
"
"-----------------------------------

"-----------------------------------------------------------------------


"-----------------------------------------------------------------------
" Vim Styling Settings
"-----------------------------------
" enable syntax highlighting
syntax on
" enable line numbering
set number
" enable status line ruler
set ruler
" enable datetime display for ruler
set rulerformat=%55(%{strftime('%a\ %b\ %e\ %I:%M\ %p')}\ %5l,%-6(%c%V%)\ %P%)
" display trailing whitespace with <CTRL-V u22c5> and EOL with <CTRL-V u21b2>
set list listchars=trail:·,eol:↲
" set background type to be dark
set background=dark
" enable current line highlighting
set cursorline
" enable current column highlighting
set cursorcolumn
" show (partial) command in the last line of the screen
set showcmd
" display line wrap as <CTRL-V u21aa>
set showbreak=↪
"
"-----------------------------------------------------------------------


"-----------------------------------------------------------------------
" Indentation Settings
"-----------------------------------
" align new line's indent with previous line's
set autoindent
" set number of columns for auto-indenting
set shiftwidth=4
" set number of columns for TAB/BACKSPACE
set softtabstop=4
" set insert spaces for TAB
set expandtab
" set number of columns for displaying hard TAB
set tabstop=4
"
"-----------------------------------------------------------------------


"-----------------------------------------------------------------------
" Brace Match Settings
"-----------------------------------
"visual select all contents between matching braces
noremap % v%
" briefly jump to matching brace when ending brace is inserted
set showmatch
" set showmatch jump time
set matchtime=3
" showmatch screen scroll
"inoremap } }<Left><c-o>%<c-o>:sleep 500m<CR><c-o>%<c-o>a
"inoremap ] ]<Left><c-o>%<c-o>:sleep 500m<CR><c-o>%<c-o>a
"inoremap ) )<Left><c-o>%<c-o>:sleep 500m<CR><c-o>%<c-o>a
"
"-----------------------------------------------------------------------


"-----------------------------------------------------------------------
" Key Mapping Settings
"-----------------------------------
" change leader key
let mapleader=","
" use ;; to escape in insert mode
inoremap ;; <esc>
" use ;; to escape in visual mode
vnoremap ;; <esc>
" save with sudo permission
cnoremap w!! w !sudo tee > /dev/null %
" delete trailing whitespace
nnoremap <leader>W :%s/\s\+$//<CR>
"
"-----------------------------------------------------------------------


"-----------------------------------------------------------------------
" Search Settings
"-----------------------------------
" autocomplete searches
set wildmenu
" highlight search results
set hlsearch
" search as characters are entered
set incsearch
"
"-----------------------------------------------------------------------


"-----------------------------------------------------------------------
" Uncategorized Essentials
"-----------------------------------
" hides unloaded buffer and keeps track of changes
set hidden
" spell checker
set spell
"
"-----------------------------------------------------------------------
