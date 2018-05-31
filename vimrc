" Default Options that I like:
set number

" Plugins will be downloaded under the specified directory.
call plug#begin('~/.vim/plugged')

" Aurora theme
Plug 'everard/vim-aurora'

" XDebug plugin
Plug 'vim-vdebug/vdebug'

" Declare the list of plugins.
Plug 'keith/swift.vim'

" Fugitive helps with git related stuff.
Plug 'tpope/vim-fugitive' | Plug 'vim-airline/vim-airline' | Plug 'vim-airline/vim-airline-themes'

" NerdTree
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

" TMUX Helpers
Plug 'christoomey/vim-tmux-navigator'
Plug 'christoomey/vim-tmux-runner'
Plug 'christoomey/vim-run-interactive'

" File-System search
Plug 'ctrlpvim/ctrlp.vim'

" Diary
Plug 'vimwiki/vimwiki'

" Markdown Server
Plug 'JamshedVesuna/vim-markdown-preview'

" Make tmux look the same
Plug 'edkolev/tmuxline.vim'

" List ends here. Plugins become visible to Vim after this call.
call plug#end()

map <C-n> :NERDTreeToggle<CR>
autocmd Filetype swift setlocal expandtab tabstop=4 shiftwidth=4

" Set the vim-airline theme
let g:airline_theme='aurora'

" Plug 'joonty/vdebug', { 'branch': 'master' } 
" PHP debug
let g:vdebug_options={}
let g:vdebug_options['path_maps'] = { '/var/www/eye': '/Users/jakew/Development/eye', '/var/www/Yii': '/Users/jakew/Development/yii/framework' } 
