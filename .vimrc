"Author    Jiongteng Hong
"StartTime 10/17/2013

    set nocompatible

"Color {
    colorscheme Monokai  "Sublime Text2
    set t_Co=256
"}

"General {
    set nowrap               "不折行
    set number		         "行号
    set tabstop=4 expandtab	 "tab宽度, 将tab扩展为空
    set softtabstop=4        "使得按退格键时可以一次删掉 4 个空格
    set shiftwidth=4         "<<和>>宽度
    set hlsearch	         "搜索高亮
    set autochdir	         "自动切换当前目录为当前文件所在的目录
    set cursorline	         "高亮光标所在行
    set history=1000         "'q:'显示的记录
    set whichwrap=b,s,h,l,<,>,[,] "光标移动

    syntax enable
    syntax on
    hi Search     term=standout ctermfg=0 ctermbg=11 guifg=Black guibg=Yellow
    hi MatchParen term=bold cterm=bold ctermfg=231 ctermbg=64 gui=bold guifg=#f8f8f2 guibg=#46830c
"}

"Status {
	set laststatus=2  "状态显示
	set statusline=%F\ %{&encoding}\ %=\ %L:%l:%c
"}

"Encode {
    set encoding=utf-8      "文件查看的编码, 如果文件是gbk, 转utf-8
    set fileencoding=utf-8  "文件写入的编码
    set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1 "探测文件的编码, 影响fileencoding
"}

"Vundle require {
	filetype off

	set rtp+=~/.vim/bundle/vundle/
	call vundle#rc()

    Bundle 'gmarik/vundle'
	filetype plugin indent on
"}

"Bundle {
	Bundle 'vim-scripts/AutoClose'
	Bundle 'vim-scripts/AutoComplPop'
	Bundle 'vim-scripts/The-NERD-tree'
	Bundle 'vim-scripts/ShowTrailingWhitespace'
"}

"SolvePasteProblem {
    if &term =~ "xterm.*"
        let &t_ti = &t_ti . "\e[?2004h"
        let &t_te = "\e[?2004l" . &t_te
        function XTermPasteBegin(ret)
            set pastetoggle=<Esc>[201~
            set paste
            return a:ret
        endfunction
        map <expr> <Esc>[200~ XTermPasteBegin("i")
        imap <expr> <Esc>[200~ XTermPasteBegin("")
        vmap <expr> <Esc>[200~ XTermPasteBegin("c")
        cmap <Esc>[200~ <nop>
        cmap <Esc>[201~ <nop>
    endif
"}
