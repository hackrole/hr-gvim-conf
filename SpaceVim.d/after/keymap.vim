"==========================================================
" global plugins config
"==========================================================
" ignore file patterns
let g:vimfiler_ignore_pottern = ['^\.git$', '^\.DS_Store\$', '\.pyc$']

" NERDTree config
let g:NERDTreeWinPos = "left"
nnoremap <F3> :NERDTree<CR>

" debug it
echom "i am debug spacevim after..."
execute "w >> /tmp/echom.log"
