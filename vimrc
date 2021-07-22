" Default Options that I like:
set number
set encoding=UTF-8
set spelllang=en
set timeoutlen=1000 ttimeoutlen=0
set nocompatible
syntax enable
filetype plugin on
colorscheme elflord

set path=**
set wildmenu

" Tweaks for browsing
let g:netrw_banner=0        " disable annoying banner
let g:netrw_altv=1          " open splits to the right
let g:netrw_liststyle=3     " tree view
let g:netrw_list_hide=netrw_gitignore#Hide()
let g:netrw_list_hide.=',\(^\|\s\s\)\zs\.\S\+'

" Add :MakeTags command
command! MakeTags !ctags -R .

" ==============================================================================
" Plugins will be downloaded under the specified directory.
call plug#begin('~/.vim/plugged')
" ==============================================================================

" Git Gutter
Plug 'airblade/vim-gitgutter'

" Better substitute and commenting
Plug 'tpope/vim-abolish'
Plug 'tpope/vim-commentary'

" Sensible defaults
" Plug 'tpope/vim-sensible'

" Automatic tabbing
Plug 'tpope/vim-sleuth'

" NerdTree & Better Dev Icons
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'ryanoasis/vim-devicons'
map <C-n> :NERDTreeToggle<CR>


" File-System search
Plug 'ctrlpvim/ctrlp.vim'

" Airline & Theme
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
let g:airline_powerline_fonts=1
let g:airline#extensions#tabline#enabled=1
let g:airline_theme='bubblegum'


" Rainbow
Plug 'luochen1990/rainbow'
let g:rainbow_active = 1

" Tmux Related
Plug 'christoomey/vim-tmux-navigator'
Plug 'christoomey/vim-tmux-runner'
Plug 'christoomey/vim-run-interactive'

" Make tmux look the same
Plug 'edkolev/tmuxline.vim'

" load local plugins
let $local_vimrc = $HOME . "/.local.vimrc"
if filereadable($local_vimrc)
    source $local_vimrc
endif
    
" ==============================================================================
" List ends here. Plugins become visible to Vim after this call.
call plug#end()
" ==============================================================================

