" Plugins will be downloaded under the specified directory.
call plug#begin('~/.vim/plugged')

" Declare the list of plugins.
Plug 'keith/swift.vim'

" Fugitive helps with git related stuff.
Plug 'tpope/vim-fugitive' | Plug 'vim-airline/vim-airline' | Plug 'vim-airline/vim-airline-themes'

" NerdTree
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

" TMUX Helpers
Plug 'christoomey/vim-tmux-navigator'
Plug 'https://github.com/christoomey/vim-tmux-runner'
Plug 'christoomey/vim-run-interactive'

" File-System search
Plug 'ctrlpvim/ctrlp.vim'

" Diary
Plug 'vimwiki/vimwiki'

" List ends here. Plugins become visible to Vim after this call.
call plug#end()

map <C-n> :NERDTreeToggle<CR>
autocmd Filetype swift setlocal expandtab tabstop=4 shiftwidth=4
