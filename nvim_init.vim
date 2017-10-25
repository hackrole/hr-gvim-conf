set runtimepath ^=~/.vim
set runtimepath+=~/.vim/after
let &packpath=&runtimepath
source ~/.vimrc

" some keymap
tnoremap <M-n> <C-\><C-o>:tabprevious<CR>
tnoremap <M-m> <C-\><C-o>:tabnext<CR>
tnoremap <M-h> <C-\><C-o><C-w>h
tnoremap <M-j> <C-\><C-o><C-w>j
tnoremap <M-k> <C-\><C-o><C-w>k
tnoremap <M-l> <C-\><C-o><C-w>l
nnoremap <leader>tt :terminal tmux<CR>
