let s:nameToActionMap = {
	\ "Format": "format",
	\ "Rename": "rename",
	\ "Go to Definition": "jumpDefinition",
	\ "Go to Declaration": "jumpDeclaration"
\ }

let s:names = ["Go to Definition", "Go to Declaration", "Format", "Rename"]

function! s:actionSink(actionName)
	let l:action = s:nameToActionMap[a:actionName]
	call CocActionAsync(l:action)
endfunction

let s:fzfOptions = {
	\ "source": s:names,
	\ "window": "vertical aboveleft 30new",
	\ "sink": function("s:actionSink")
\ }

command! -nargs=0 OpenCocMenu call fzf#run(s:fzfOptions) " Defines callable 'function' OpenCocMenu to use certain coc actions. Why fzf?
nnoremap <Plug>(open-coc-menu) :<C-u>OpenCocMenu<CR>
nmap <silent> <Leader><F3> <Plug>(open-coc-menu)
