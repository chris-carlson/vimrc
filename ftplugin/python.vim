""""""""""""""""""""""""""""""""""""""""""""""""""
" Abbreviations
""""""""""""""""""""""""""""""""""""""""""""""""""

iabbrev <buffer> br break
iabbrev <buffer> cl class
iabbrev <buffer> con continue
iabbrev <buffer> fr from
iabbrev <buffer> imp import
iabbrev <buffer> pr print
iabbrev <buffer> prop @property
iabbrev <buffer> ret return
iabbrev <buffer> se self
iabbrev <buffer> set setter
iabbrev <buffer> stat @staticmethod

""""""""""""""""""""""""""""""""""""""""""""""""""
" Indentation
""""""""""""""""""""""""""""""""""""""""""""""""""

setlocal tabstop=4
setlocal softtabstop=4
setlocal shiftwidth=4

""""""""""""""""""""""""""""""""""""""""""""""""""
" Movement
""""""""""""""""""""""""""""""""""""""""""""""""""

" Go to previous/next class definition
nnoremap <silent> <buffer> [c ?^class\s\zs\w\+:<CR>:noh<CR>
nnoremap <silent> <buffer> ]c /^class\s\zs\w\+:<CR>:noh<CR>

" Go to previous/next init
nnoremap <silent> <buffer> [i ?def\s\zs__init__(.*):<CR>:noh<CR>
nnoremap <silent> <buffer> ]i /def\s\zs__init__(.*):<CR>:noh<CR>

" Go to previous/next function definition
nnoremap <silent> <buffer> [f ?def\s\zs\w\+(.*):<CR>:noh<CR>
nnoremap <silent> <buffer> ]f /def\s\zs\w\+(.*):<CR>:noh<CR>

" Go to previous/next parameter
nnoremap <silent> <buffer> [p ?\((\\|,\s\)\zs\(\S\+\\|'.\{-}'\)\ze\(,\\|)\)<CR>:noh<CR>
nnoremap <silent> <buffer> ]p /\((\\|,\s\)\zs\(\S\+\\|'.\{-}'\)\ze\(,\\|)\)<CR>:noh<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""
" Operations
""""""""""""""""""""""""""""""""""""""""""""""""""

" Add a parameter to a function
nnoremap <buffer> <localleader>ip ^f(a,<space>
nnoremap <buffer> <localleader>ap ^f)i,<space>

" Convert a standard for loop to a range for loop
nnoremap <buffer> <localleader>r ^2ea_index<esc>2wirange(0,<space>len(<esc>f:i))<esc>$

" Paste variable assigned in current line in next line
nnoremap <buffer> <Localleader>pv ^yeo#<Esc>"_xpa
