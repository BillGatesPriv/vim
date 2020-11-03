scriptencoding utf-8

if !empty(provider#clipboard#Executable())
  set clipboard+=unnamedplus
endif

" General tab settings
set tabstop=4       " number of visual spaces per TAB
set softtabstop=4   " number of spaces in tab when editing
set shiftwidth=4    " number of spaces to use for autoindent
set expandtab       " expand tab to spaces so that tabs are spaces

" Set matching pairs of characters and highlight matching brackets, % to jump
set matchpairs+=<:>,「:」,『:』,【:】,“:”,‘:’,《:》

" File and script encoding settings for vim
set fileencoding=utf-8
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1

" Break line at predefined characters
set linebreak
" Character to show before the lines that have been soft-wrapped
set showbreak=↪

" List all matches and complete to longest common string in command mode
set wildmode=list:longest

"set cursorline

set scrolloff=3

" Use mouse to select and resize windows, etc.
set mouse=nic  " Enable mouse in several mode
set mousemodel=popup  " Set the behaviour of mouse

set fileformats=unix,dos  " Fileformats to use for new files

" Ask for confirmation when handling unsaved or read-only files
set confirm

set visualbell noerrorbells  " Do not use visual and errorbells
set history=500  " The number of command and search history to keep
                
" Toggle listchars with :set list!
set list listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<
set nolist "Todo: Keyboard binding

" Title of window
set title
set titlestring=
if g:is_linux
  set titlestring+=%(%{hostname()}\ \ %)
endif
set titlestring+=%(%{expand('%:p:~')}\ \ %)

" Persistent undo even after you close a file and re-open it
set undofile

" Completion Behaviour
" Todo: Good Completion-Behaviour
set pumheight=10  " Maximum number of items to show in popup menu

set virtualedit=block  " Selects 'real block' during block selection

" ~ is not an Operator, swap Characters with h/j/k/l option
set tildeop
