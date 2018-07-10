set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'Raimondi/delimitMate'

Plugin 'vim-airline/vim-airline'

Plugin 'vim-airline/vim-airline-themes'

Plugin 'Valloric/YouCompleteMe'

Plugin 'scrooloose/syntastic'

Plugin 'tomtom/tcomment_vim'

Plugin 'easymotion/vim-easymotion'

Plugin 'ntpeters/vim-better-whitespace' " use :StripWhitespace

Plugin 'bronson/vim-visual-star-search'

Plugin 'scrooloose/nerdtree'

Plugin 'rhysd/clever-f.vim'

Plugin 'tpope/vim-unimpaired'

" Plugin 'vim-scripts/pdftotext'

" Plugin 'makerj/vim-pdf'

" Plugin 'junegunn/goyo.vim'
" All of your Plugins must be added before the following line

call vundle#end()            " required
filetype plugin indent on    " required

" Highlighting & Widths
syntax on	" create highlighting
color custom
let g:default_tab_width=4
let g:default_text_width=100

" YouCompleteMe stuff -----------------------------------
" seed the server with keywords based on the current language
let g:ycm_seed_identifiers_with_syntax = 1
let g:ycm_complete_in_comments = 0
let g:ycm_collect_identifiers_from_comments_and_strings = 0
let g:ycm_server_python_interpreter = ''
let g:ycm_global_ycm_extra_conf = ''

" Disable ycms actions as a debugger, enabling syntastic to check clang files
let g:ycm_show_diagnostics_ui = 0

" EasyMotion stuff -----------------------------------
" "<Leader>f{char} to move to {char}
map  <Leader>f <Plug>(easymotion-bd-f)
"nmap <Leader>f <Plug>(easymotion-overwin-f)
" s{char}{char} to move to {char}{char}
nmap s <Plug>(easymotion-overwin-f2)
" Move to line
map <Leader>L <Plug>(easymotion-bd-jk)
"nmap <Leader>L <Plug>(easymotion-overwin-line)
" Move to word
map  <Leader>w <Plug>(easymotion-bd-w)
" nmap <Leader>w <Plug>(easymotion-overwin-w)

" Airline stuff-----------------------------------
set encoding=utf-8
let g:airline_powerline_fonts = 1
set t_Co=256
"let g:airline_theme='murmur'
let g:airline_theme='deus'
"autocmd VimEnter * AirlineToggleWhitespace
"autocmd VimEnter * AirlineTheme bubblegum

" Syntastic stuff-----------------------------------
"let g:syntastic_cpp_checkers = ['gcc']
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_python_checkers = ['python3']

" NerdTree stuff -----------------------------------
map <C-n> :NERDTreeToggle<CR>
" autocmd vimenter * NERDTree     " auto open NERDTree on start
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif " close vim if only NERDTree is open"

" Basic Configurations--------------------------------------
" Display and Behaviour----
set relativenumber	                " display line numbers relative to cursor
set number	                        " display line numbers
set wrap                            " wraps long lines"
set mouse=a	                        " enable mouse
set backspace=eol,start,indent      " Set backspace functionality in insert mode
let &textwidth=default_text_width   " line length above with to wrap a line.
set clipboard=unnamed	            " allows vim to interact with system clipboard

" Command Line----
set cmdheight=1	                " set command height to 1
set showcmd	                    " shows partial commands
set laststatus=2                " always shows status bar
set ruler                       " show ruler in status bar
set wildmode=longest,list,full	" complete line like bash
set wildmenu

" SpellCheck----
hi clear SpellBad
hi clear SpellCap
hi SpellBad cterm=underline ctermfg=160
hi SpellCap cterm=underline ctermfg=021
let def_rg = 'syn region %s matchgroup=%s containedin=%s contains=%s,@Spell %s'
" setlocal spell          " enable spell checking by default
map <leader>ss :setlocal spell!<cr>

" Bracket matching---
set showmatch	        " shows match for {} ()
set matchtime=2	        " set time for showmatch

" Indenting----
set expandtab	                    " in insert mode, expand <Tab> to spaces
let &shiftwidth=default_tab_width	" number of spaces on autoindent
let &softtabstop=default_tab_width	" number of spaces to delete
let &tabstop=default_tab_width		" number of spaces <Tab> in text stand for
set autoindent	                    " auto indents lines
set smartindent	                    " use smart indents
" Set to show invisibles (tabs & trailing spaces) & their highlight color
set list listchars=tab:»\ ,trail:·


" Searching----
set ignorecase          " ignore case when searching
set smartcase           " override ignorecase when pattern has upper case chars
set incsearch           " show matches as search is typed
" set hlsearch            " highlight matches of last search pattern
set magic               " make backslash in regex more predictable

" History----
set undodir=~/.vim_runtime/undodor  " directory of undo files
set undofile	                    " automatically save and restore undo history
set history=700	                    " number of lines of history vim remembers

" File management----
set autoread            " auto reread files changed externally
set autowrite           " auto save when leaving a modified buffer
set nobackup            " do not keep backup after overwriting a file
set nowritebackup       " do not write backup after overwriting a file
set noswapfile          " do not keep a swap file
set hidden              " allow opening new buffers without writing the current buffer


