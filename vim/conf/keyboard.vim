" --------------------------------------------------
"    FileName: keyboard.vim
"        Desc: 按键配置文件
"      Author: lcc
"       Email: leftcold@gmail.com
"     Version: 0.1
"  LastChange: 11/10/2011 00:23
"     History: 参见$VIMFILES/log/update.log \ez
" --------------------------------------------------


" --------------------------------------------------
" [tab相关] {{{1
" --------------------------------------------------
nnoremap <A-x> :tabclose<CR>
nnoremap <A-c> :tabnew<CR>
inoremap <A-x> <Esc>:tabclose<CR>
inoremap <A-c> <Esc>:tabnew<CR>

" for mac
nnoremap ≈ :tabclose<CR>
inoremap ≈ :tabclose<CR>

nnoremap <A-n> :tabprevious<CR>
nnoremap <A-m> :tabnext<CR>
inoremap <A-n> <Esc>:tabprevious<CR>
inoremap <A-m> <Esc>:tabprevious<CR>

" for mac
nnoremap ˜ :tabprevious<CR>
nnoremap µ :tabnext<CR>
inoremap ˜ <Esc>:tabprevious<CR>
inoremap µ <Esc>:tabnext<CR>

nnoremap <leader>t1 :tabnext 1<CR>
nnoremap <leader>t2 :tabnext 2<CR>
nnoremap <leader>t3 :tabnext 3<CR>
nnoremap <leader>t4 :tabnext 4<CR>
inoremap <C-\>t1 :tabnext 1<CR>
inoremap <C-\>t2 :tabnext 2<CR>
inoremap <C-\>t3 :tabnext 3<CR>
inoremap <C-\>t4 :tabnext 4<CR>

" 1}}}


" --------------------------------------------------
" [窗口操作] {{{1
" --------------------------------------------------

nnoremap <A-=> <C-w>=
nnoremap <A--> 3<C-w>-
nnoremap <A-+> 3<C-w>+

" for mac
nnoremap ≠ <C-w>=
nnoremap – <C-w>-

nnoremap <A-h> <C-w>h
nnoremap <A-l> <C-w>l
nnoremap <A-j> <C-w>j
nnoremap <A-k> <C-W>k
inoremap <A-h> <Esc><C-w>h
inoremap <A-h> <Esc><C-w>l
inoremap <A-j> <Esc><C-w>j
inoremap <A-k> <Esc><C-W>k

" for mac
nnoremap ˙ <C-w>h
nnoremap ∆ <C-w>j
nnoremap ˚ <C-w>k
nnoremap ¬ <C-w>l
inoremap ˙ <Esc><C-w>h
inoremap ∆ <Esc><C-w>j
inoremap ˚ <Esc><C-w>k
inoremap ¬ <Esc><C-w>l

" 1}}}


" --------------------------------------------------
" [复制粘贴] {{{1
" --------------------------------------------------

vnoremap <A-y> "+y
nnoremap <A-p> "+p
inoremap <A-p> <Esc>"+pi

" for mac
vnoremap <A-y> "+y
nnoremap π "+p
inoremap π <Esc>"+pi

" 1}}}
"----------------------------------------------------


" -------------------------------------------------
" [vim ConqueTerm快捷键]{{{1
" -------------------------------------------------
nn <leader>Bb :tabnew<CR>:ConqueTerm bash<CR>
nn <leader>bb :botright 15split<CR>:ConqueTerm bash<CR>
ino <leader>Bb <Esc>:tabnew<CR>:ConqueTerm bash<CR>
ino <Leader>bb <Esc>:botright 15split<CR>:ConqueTerm bash<CR>
nn <leader>Bp :tabnew<cr>:ConqueTerm ipython<CR>
nn <leader>bp :botright 15split<CR>:ConqueTerm ipython<CR>
ino <leader>bp <Esc>:tabnew<cr>:ConqueTerm ipython<CR>
ino <leader>Bp <Esc>:botright 15split<CR>:ConqueTerm ipython<CR>

" 1}}}


" --------------------------------------------------
" [文本编辑] {{{1
" --------------------------------------------------
" 补全
ino <A-o> <ESC>o
ino <A-k> <ESC>O
ino <A-j> <CR>
ino <A-n> <Down>
ino <A-m> <Up>
ino <A-f> <C-o>$
ino <A-b> <C-o>^
nn <leader>hh :noh<CR>
" 命令行下粘贴
cmap <A-p> <C-R>+
exe 'inoremap <script> <A-p>' paste#paste_cmd['i']
exe 'vnoremap <script> <A-p>' paste#paste_cmd['v']
" CTRL-A is Select all(CTRL-A实现全选)
"noremap <C-A> gggH<C-O>G
"inoremap <C-A> <C-O>gg<C-O>gH<C-O>G
"cnoremap <C-A> <C-C>gggH<C-O>G
"onoremap <C-A> <C-C>gggH<C-O>G
"snoremap <C-A> <C-C>gggH<C-O>G
"xnoremap <C-A> <C-C>ggVG
" 1}}}
"---------------------------------------------------
" [normal-mode 下防emacs快捷键]
"---------------------------------------------------
"TODO: consider it.
ino <C-n> <Down>
ino <C-p> <Up>
ino <C-f> <Right>
ino <C-b> <left>
" --------------------------------------------------
" [宏执行热键] {{{1
" --------------------------------------------------
" TODO:
" 1}}}
" --------------------------------------------------
" [快捷文件操作] {{{1
" --------------------------------------------------
" TODO: 优化成 项目目录列表
" 快捷生成ctags文件
"nn <leader>cr :!ctags -R `pwd`<CR>
" 快捷生成filenametags文件（需要shell脚本支持）
"nn <leader>fr :!gen_LFT<CR>
" 快捷寄存器剪切复制粘贴

vno <A-a> "
" 快捷退出
nn <A-q> :q!<CR>
"nn <C-q> :qa!<CR>
" Ctrl+s保存
no <C-s> :up<CR>
vno <C-s> <C-C>:up<CR>
ino <C-s> <C-O>:up<CR>
" 快捷设置文档类型
nn <A-t>h :set ft=html<CR>
nn <A-t>c :set ft=css<CR>
nn <A-t>p :set ft=php<CR>
nn <A-t>j :set ft=javascript<CR>
" sudo save
cmap w!! w !sudo tee > /dev/null %
" }}}
" --------------------------------------------------
" [快捷编辑配置文件] {{{1
" --------------------------------------------------
nn <leader>ev :tabnew $HOME/.vimrc<CR>
nn <leader>em :tabnew $VIMFILES/conf/main.vim<CR>
nn <leader>es :tabnew $VIMFILES/conf/set.vim<CR>
nn <leader>ef :tabnew $VIMFILES/conf/function.vim<CR>
nn <leader>ek :tabnew $VIMFILES/conf/keyboard.vim<CR>
nn <leader>ep :tabnew $VIMFILES/conf/plugin.vim<CR>
nn <leader>ec :tabnew $VIMFILES/conf/command.vim<CR>
nn <leader>ea :tabnew $VIMFILES/conf/ab.vim<CR>
nn <leader>eu :tabnew $VIMFILES/log/update.log<CR>

nn <leader>Ev :split $HOME/.vimrc<CR>
nn <leader>Em :split $VIMFILES/conf/main.vim<CR>
nn <leader>Es :split $VIMFILES/conf/set.vim<CR>
nn <leader>Ef :split $VIMFILES/conf/function.vim<CR>
nn <leader>Ek :split $VIMFILES/conf/keyboard.vim<CR>
nn <leader>Ep :split $VIMFILES/conf/plugin.vim<CR>
nn <leader>Ec :split $VIMFILES/conf/command.vim<CR>
nn <leader>Ea :split $VIMFILES/conf/ab.vim<CR>
nn <leader>Eu :split $VIMFILES/log/update.log<CR>
"1}} vim:fdm=marker:fdc=1

