" Default Options that I like:
set number

" Plugins will be downloaded under the specified directory.
call plug#begin('~/.vim/plugged')


" Markbar for better bookmarks
Plug 'Yilin-Yang/vim-markbar'

" XDebug plugin
Plug 'vim-vdebug/vdebug'

" Fugitive helps with git related stuff.
Plug 'tpope/vim-fugitive' 

" Better substitute
Plug 'tpope/vim-abolish'

" NerdTree
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

" File-System search
Plug 'ctrlpvim/ctrlp.vim'

" Diary
Plug 'vimwiki/vimwiki'

" Markdown Server
Plug 'JamshedVesuna/vim-markdown-preview'


" Themes and Graphics
" Aurora theme
Plug 'everard/vim-aurora'
Plug 'vim-airline/vim-airline' 
Plug 'vim-airline/vim-airline-themes'


" Tmux Related
" TMUX Helpers
Plug 'christoomey/vim-tmux-navigator'
Plug 'christoomey/vim-tmux-runner'
Plug 'christoomey/vim-run-interactive'

" Make tmux look the same
Plug 'edkolev/tmuxline.vim'


" Language Specific
" Vim-Go
Plug 'fatih/vim-go'

" Declare the list of plugins.
Plug 'keith/swift.vim'


" List ends here. Plugins become visible to Vim after this call.
call plug#end()

map <C-n> :NERDTreeToggle<CR>
autocmd Filetype swift setlocal expandtab tabstop=4 shiftwidth=4

" Set the vim-airline theme
let g:airline_theme='aurora'

" Plug 'joonty/vdebug', { 'branch': 'master' } 
