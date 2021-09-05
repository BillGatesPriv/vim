" :PlugInstall

if empty(glob('~/.local/share/nvim/site/autoload/plug.vim'))
	silent !curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs
		\ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

call plug#begin('~/.local/bin/nvim_plugin')
" Local Plugins {{{

		Plug 'gruvbox-community/gruvbox'
		let g:polyglot_disabled = ['jsx', 'tex', 'typescript', 'cpp', 'autoindent']
		Plug 'sheerun/vim-polyglot'
		Plug 'leafgarland/typescript-vim'
		Plug 'bfrg/vim-cpp-modern'

		Plug 'itchyny/lightline.vim'
		Plug 'mengelbrecht/lightline-bufferline'
		Plug 'psliwka/vim-smoothie'

		Plug 'neoclide/coc.nvim', {'branch': 'release'}
		Plug 'tpope/vim-commentary'
		Plug 'tpope/vim-sleuth'

		Plug 'tpope/vim-fugitive'
		Plug 'airblade/vim-gitgutter'

		Plug 'puremourning/vimspector' " See doc how to add deb. support

		Plug 'airblade/vim-rooter'
		Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
		Plug 'junegunn/fzf.vim'

		Plug 'vimwiki/vimwiki'
" }}}

call plug#end()
" Lightline {{
	set background=dark
	set termguicolors

	set showtabline=2
	let s:my_theme_dict = {}

	function s:my_theme_dict.gruvbox() dict abort
		let g:gruvbox_italicize_strings=1
		let g:gruvbox_contrast_dark="hard"
		let g:gruvbox_filetype_hi_groups = 0
		let g:gruvbox_plugin_hi_groups = 0
		let g:gruvbox_italic=1
		colorscheme gruvbox
	endfunction

	let s:candidate_theme = ['gruvbox']
	let s:theme = s:candidate_theme[0]

	let s:colorscheme_func = printf('s:my_theme_dict.%s()', s:theme)
	if has_key(s:my_theme_dict, s:theme)
  	  execute 'call ' . s:colorscheme_func
	else
  	  echohl WarningMsg
  	  echomsg 'Invalid colorscheme function: ' s:colorscheme_func ', using default instead.'
  	  echohl None
	endif

	let g:lightline = {
		\ 'colorscheme': 'OldHope',
		\ 'active': {
      	\   'left': [ [ 'mode', 'paste' ],
      	\             [ 'gitbranch', 'modified', 'readonly' ],
    	\			  [ 'filename' ]
    	\			]
      	\ },
      	\ 'component_function': {
      	\   'gitbranch': 'FugitiveHead',
    	\   'readonly': 'LightlineReadonly',
    	\	'filename': 'LightlineFilename'
      	\ },
   	  	\ 'tabline': {
        \   'left': [ ['buffers'] ],
        \   'right': [ ['close'] ]
        \ },
        \ 'component_expand': {
        \   'buffers': 'lightline#bufferline#buffers'
        \ },
        \ 'component_type': {
        \   'buffers': 'tabsel'
        \ },
		\ }

	function! LightlineFilename() " Name relative to git repository
  	  let root = fnamemodify(get(b:, 'git_dir'), ':h')
  	  let path = expand('%:p')
  	  if path[:len(root)-1] ==# root
    	return path[len(root)+1:]
  	  endif
  	  return expand('%')
	endfunction

	function! LightlineReadonly()
  	  return &readonly && &filetype !=# 'help' ? '-' : ''
	endfunction

	autocmd BufWritePost,TextChanged,TextChangedI * call lightline#update()
	let g:lightline#bufferline#show_number = 1
	let g:lightline#bufferline#unnamed      = '[No Name]'
	let g:lightline#bufferline#shorten_path = 0
	" let g:lightline#bufferline#filename_modifier = ':r'

" }}
" Rooter {{
	let g:rooter_targets = '*.ts, *.md, *.yml, *.yaml, *.c, Makefile, *.vim'
        " coc.preferences.rootPatterns: ['.git', '.hg', '.projections.json', '.pom', '.vimspector.json']
	let g:rooter_patterns = ['.git', 'Makefile', '.vimspector.json', '=src', '=typescript']
	let g:rooter_manual_only = 0 " :RooterToggle
" }}
" Polygot {{
	let g:vim_markdown_auto_insert_bullets = 0
	let g:vim_markdown_new_list_item_indent = 0
	let g:python_highlight_func_calls = 0

	let g:python_highlight_operators = 0
	let g:python_highlight_func_calls = 0
	let g:python_highlight_all = 1

" }}
" COC {{{
" :h coc-nvim
	let g:coc_global_extionsions = ['coc-json', 'coc-sh', 'coc-tsserver', 'coc-pyright', 'coc-markdownlint', 'coc-pairs', 'coc-java', 'coc-java-debug', 'coc-clangd', 'coc-tslint-plugin']
	set completeopt-=preview
"let g:lightline#bufferline#shorten_path = 0 }}}
" Vimspector {{
	let g:vimspector_enable_mappings = 'HUMAN'
" }}
" {{
	let g:vimwiki_list = [{'path': '~/.config/vimwiki/', 'path_html': '~/.config/vimwiki_html/'}]
	let g:vimwiki_global_ext = 0
" }}
