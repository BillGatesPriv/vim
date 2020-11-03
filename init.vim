" :PlugInstall
call plug#begin('~/.local/bin/nvim_plugin')
" Local Plugins
" Plug '~/my-prototype-plugin'

"{ UI: Color, theme etc.
Plug 'lifepillar/vim-gruvbox8'
Plug 'srcery-colors/srcery-vim'
Plug 'ajmwagar/vim-deus'
Plug 'YorickPeterse/happy_hacking.vim'
Plug 'lifepillar/vim-solarized8'
Plug 'sickill/vim-monokai'
Plug 'rakr/vim-one'
Plug 'kaicataldo/material.vim'
Plug 'joshdick/onedark.vim'
Plug 'KeitaNakamura/neodark.vim'
Plug 'jsit/toast.vim'
"}

" Git Plugins
" Plug 'https://github.com/junegunn/vim-github-dashboard.git' 
Plug 'https://github.com/preservim/nerdtree.git'

call plug#end()

" Check :h runtimepath
"{ Main configurations
let g:config_file_list = [ 
            \ 'variables.vim',
			\ 'options.vim',
			\ 'ui.vim'
			\ ]
let g:nvim_config_root = expand('<sfile>:p:h')
for s:fname in g:config_file_list
	execute printf('source %s/core/%s', g:nvim_config_root, s:fname)
endfor
"}
