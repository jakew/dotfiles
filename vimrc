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

" Rainbow
Plug 'luochen1990/rainbow'
let g:rainbow_active = 1


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

" Swift
Plug 'keith/swift.vim'

" Lua
Plug 'xolox/vim-misc'
Plug 'xolox/vim-lua-ftplugin'
Plug 'vim-scripts/lua.vim'

" Typescript
Plug 'leafgarland/typescript-vim'
Plug 'Quramy/vim-js-pretty-template'
Plug 'Shougo/vimproc.vim', {'do' : 'make'}

" Javascript
Plug 'pangloss/vim-javascript'

" Angular
Plug 'angular/angular-cli'

" List ends here. Plugins become visible to Vim after this call.
call plug#end()

map <C-n> :NERDTreeToggle<CR>
autocmd Filetype swift setlocal expandtab tabstop=4 shiftwidth=4
autocmd FileType javascript setlocal ts=2 sts=2 sw=2

" Set the vim-airline theme
let g:airline_theme='aurora'

" Plug 'joonty/vdebug', { 'branch': 'master' } 

let wiki_1 = {}
let wiki_1.path = '~/vimwiki/'

let wiki_2 = {}
let wiki_2.path = '~/scifi/'

let g:vimwiki_list = [wiki_1, wiki_2]

set spelllang=en
set spellfile=$HOME/.dotfiles/vim/spell/en.utf-8.add

if !exists("augo")
	let augo = 1
	augroup go
	autocmd!
		autocmd Filetype go command! -bang A call go#alternate#Switch(<bang>0, 'edit')
		autocmd Filetype go command! -bang AV call go#alternate#Switch(<bang>0, 'vsplit')
		autocmd Filetype go command! -bang AS call go#alternate#Switch(<bang>0, 'split')
	augroup END
endif

set timeoutlen=1000 ttimeoutlen=0
