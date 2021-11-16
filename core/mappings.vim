let mapleader=" "
map q: <Nop>
noremap <Leader>q q
noremap q <Nop>

" standard mappings {{{
	nnoremap <silent> <Leader>, :<C-u>nohlsearch<CR>

        nnoremap <silent> <Leader>w :<C-u>w<CR>
        nnoremap <silent> <Leader>q :<C-u>q<CR>

	inoremap jj <Esc>
    " buffers {
        nnoremap <silent> gp :bp<CR>
        nnoremap <silent> gn :bn<CR>
        nnoremap <silent> gk :bd<CR>
    " }}
    " windows {
	nnoremap <C-h> <C-w>h
    	nnoremap <C-j> <C-w>j
    	nnoremap <C-k> <C-w>k
    	nnoremap <C-l> <C-w>l
    	nnoremap <C-l> <C-w>l
    	nnoremap <C-s> <C-w>r
    	nnoremap <silent> <C-S-Left> :vertical resize -1<CR>
    	nnoremap <silent> <C-S-Right> :vertical resize +1<CR>
    	nnoremap <silent> <C-S-Down> :resize -1<CR>
    	nnoremap <silent> <C-S-Up> :resize +1<CR>
    " }}
    " fzf {
	nnoremap <silent> <C-g>     :<C-u>Rg<CR>
	nnoremap <silent> <Leader>g :<C-u>Lines<CR>
	nnoremap <silent> <C-q>     :<C-u>GFiles --exclude-standard --others --cached<CR>
	nnoremap <silent> <C-p>     :<C-u>Files<CR>
	nnoremap <silent> <Leader>p :<C-u>Buffers<CR>
	nnoremap <silent> <C-c>     :<C-u>Commands<CR>
    " {{
    	noremap <CR> o<ESC>
    	inoremap <C-e> <Esc>a
    " }}
    " folds {
        nnoremap <silent> <leader>z za
    " }
    " git {
        nmap <leader>hh <Plug>(GitGutterNextHunk)
        nmap <leader>HH <Plug>(GitGutterPrevHunk)
    " }"
" }}}

" coc {{{
    " coc-explorer {
        " nmap <space>e <Cmd>CocCommand explorer<CR>
        nmap <space>e <Cmd>CocCommand explorer --preset floating<CR>
    " }"
    xmap <leader>a  <Plug>(coc-codeaction-selected)
    nmap <leader>a  <Plug>(coc-codeaction-selected)
    " functions {{
    function! s:check_back_space() abort
      let col = col('.') - 1
      return !col || getline('.')[col - 1]  =~# '\s'
    endfunction

    function! s:show_documentation()
      if (index(['vim','help'], &filetype) >= 0)
        execute 'h '.expand('<cword>')
      else
        call CocActionAsync('doHover')
      endif
    endfunction

    function! s:show_signature()
    	call CocActionAsync('showSignatureHelp')
    endfunction
    " }}

    nmap <silent> gd <Plug>(coc-definition)
    nmap <silent> gD <Plug>(coc-declaration)
    nmap <silent> gy <Plug>(coc-type-definition)
    nmap <silent> gi <Plug>(coc-implementation)
    nmap <silent> gr <Plug>(coc-references)
    nmap <silent> <leader>r  <Plug>(coc-rename)
    nnoremap <silent> K :call <SID>show_documentation()<CR>
    nnoremap <silent> <c-space> :call CocAction('diagnosticInfo') <CR>

    inoremap <silent><expr> <c-space> coc#refresh()

    nnoremap <silent> ' :call CocAction('diagnosticPrevious')<CR>
    nnoremap <silent> " :call CocAction('diagnosticNext')<CR>
" }}}




" autocommands {{{
    function! StripTrailingWhitespace()
        if !&binary && &filetype != "diff" && &filetype != "markdown"
            let save_cursor = getpos(".")
            %s/\s\+$//e
            call setpos(".", save_cursor)
        endif
    endfunction

    augroup default
        autocmd!
        autocmd BufWritePre * call StripTrailingWhitespace()
    augroup END

    " autocmd WinEnter * normal zi
    " autocmd WinLeave * normal zi
    " au BufRead * normal zR
" }}}

" <CR>     | carriage return
" <silent> | no output
