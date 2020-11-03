" Check :h runtimepath
"{ Main configurations
let g:config_file_list = [
            \ 'plugins.vim',
  	        \ 'options.vim',
            \ 'mappings.vim',
			\ ]
let g:nvim_config_root = expand('<sfile>:p:h')

for s:fname in g:config_file_list
	execute printf('source %s/core/%s', g:nvim_config_root, s:fname)
endfor
runtime core/cocmenu.vim

"}


