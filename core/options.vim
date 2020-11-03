scriptencoding utf-8

" system {{{

	if !empty(provider#clipboard#Executable())
  	  set clipboard+=unnamedplus
	endif

	set history=500

	set updatetime=100

	" Some servers have issues with backup files
	set nobackup
	set nowritebackup

	" Use mouse to select and resize windows, etc.
	set mouse=nic  " Enable mouse in several mode
	set mousemodel=popup  " Set the behaviour of mouse


	" File and script encoding settings for vim
	set fileencoding=utf-8
	set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1
	set encoding=utf-8

	set fileformats=unix

	set pyx=3
" }}}

" appearance {{{
	set number relativenumber
	set linebreak
	set showbreak=↪

	set title
	set titlestring+=%(%{expand('%:p:~')}\ \ %)

	set noshowmode " Don`t show current mode
	set visualbell noerrorbells  " Do not use visual and errorbells

	if has("patch-8.1.1564")
  	  set signcolumn=number
	else
  	  set signcolumn=yes
	endif


	set cursorline

	set list
	set listchars=tab:>·,trail:·
	set wildmode=list:longest

	set tabstop=4       " number of visual spaces per TAB
	set shiftwidth=4    " number of spaces to use for autoindent

" }}}


" behavioral {{{

	set scrolloff=10

	set matchpairs+=<:>,「:」,『:』,【:】,“:”,‘:’,《:》
	autocmd FileType * set formatoptions-=o

	set copyindent
	set preserveindent

	set hidden

	set confirm

	set shortmess+=c		" Don't pass messages to ins-completion-menu
	set pumheight=10		" Maximum number of items to show in popup menu
	set cmdheight=2			" Give more space for displaying messages

	set undofile			" Persistent undo even after you close a file and re-open it
	set virtualedit=block   " Selects 'real block' during block selection
	set tildeop				" ~ is not an Operator, swap Characters with h/j/k/l option

	if has("autocmd")
  	  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    	\| exe "normal! g'\"" | endif
	endif

	if executable("rg")
		set grepprg=rg\ --color\ never\ --column\ --no-heading\ --smart-case
		set grepformat=%f:%l:%c:%m
	endif

" }}}

	set statusline^=%{coc#status()}
	au FocusGained,BufEnter,CursorHold * nested checktime %
