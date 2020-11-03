
let s:isRemoteSession = ($SSH_TTY != "")

" plugins {{{
	if empty(glob('~/.local/share/nvim/site/autoload/plug.vim'))
		silent !curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs
			\ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	endif

	let s:DATADIR=expand('~/.local/share/nvim')
	let g:polyglot_disabled = ['jsx', 'tex', 'typescript', 'cpp']
	call plug#begin(s:DATADIR . '/plug')
		Plug 'sheerun/vim-polyglot'
		Plug 'leafgarland/typescript-vim'
		Plug 'bfrg/vim-cpp-modern'

		Plug 'gruvbox-community/gruvbox'
		Plug 'itchyny/lightline.vim'

		Plug 'airblade/vim-gitgutter'
		Plug 'tpope/vim-fugitive'

		Plug 'https://github.com/tpope/vim-eunuch.git'
		Plug 'tpope/vim-sleuth'
		Plug 'tpope/vim-commentary'

		Plug 'junegunn/fzf', { 'do': './install --bin' }
		Plug 'junegunn/fzf.vim'

		Plug 'neoclide/coc.nvim', {'branch': 'release'}
		Plug 'puremourning/vimspector'

		Plug 'KeitaNakamura/tex-conceal.vim', {'for': 'tex'}
	call plug#end()
" }}}
" appearance {{{
	set background=dark
	if ! s:isRemoteSession
 		set termguicolors
 	endif
	let g:gruvbox_italic=1
	let g:gruvbox_contrast_dark="hard"
	colorscheme gruvbox

	let g:lightline = {
		\ 'colorscheme': 'gruvbox',
		\ }

	" set foldlevelstart=0
	set foldmethod=indent

	set number
	if exists("&signcolumn")
		set signcolumn="yes"
	endif
	set cursorline
	set showmatch

	set list
	set listchars=tab:>·,trail:·

	set tabstop=4
	set shiftwidth=4

	set nostartofline
	set noshowmode

	set conceallevel=2
	let g:tex_conceal = "abdgm"
" }}}
" behavioral {{{
	set ignorecase
	set smartcase

	if executable("rg")
		set grepprg=rg\ --color\ never\ --column\ --no-heading\ --smart-case
		set grepformat=%f:%l:%c:%m
	endif

	set lazyredraw

	set hidden

	set exrc
	set secure

	set copyindent
	set preserveindent

	set scrolloff=10
" }}}
" functions/autocommands {{{
	function! StripTrailingWhitespace()
		if !&binary && &filetype != "diff"
			let save_cursor = getpos(".")
			%s/\s\+$//e
			call setpos(".", save_cursor)
		endif
	endfunction

	function! s:show_documentation()
		if (index(["vim", "help"], &filetype) >= 0)
			execut "h ".expand("<cword>")
		else
			call CocActionAsync("doHover")
		endif
	endfunction

	augroup default
		autocmd!
		autocmd BufWritePre * call StripTrailingWhitespace()
	augroup END

	autocmd! BufNewFile,BufRead *.vs,*.gs,*.fs,*.vert,*.frag,*.geom set filetype=glsl

	function! s:check_back_space()
		let col = col('.') - 1
		return !col || getline('.')[col - 1] =~# '\s'
	endfunction

	runtime cocmenu.vim
" }}}
" maps {{{
	let mapleader=" "

	nnoremap <silent> <Leader>, :<C-u>nohlsearch<CR>

	nnoremap <silent> <Leader>w :<C-u>w<CR>
	nnoremap <silent> <Leader>q :<C-u>q<CR>

	nnoremap \ za


	inoremap jj <Esc>

	nnoremap <silent> <C-p> :<C-u>Files<CR>
	nnoremap <silent> <Leader>p :<C-u>Buffers<CR>
	nnoremap <silent> <C-c> :<C-u>Commands<CR>

	nmap <silent> <F3> <Plug>(open-coc-menu)
	nnoremap <silent> K :<C-u>call <SID>show_documentation()<CR>
	nmap <silent> gd <Plug>(coc-definition)
	nmap <silent> gD <Plug>(coc-declaration)
	nmap <silent> gr <Plug>(coc-references)

	inoremap <silent><expr> <TAB>
		\ pumvisible() ? "\<C-n>" :
		\ <SID>check_back_space() ? "\<TAB>" :
		\ coc#refresh()
	inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
	inoremap <silent><expr> <c-space> coc#refresh()
	inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
" }}}
