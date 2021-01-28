syntax on

set noerrorbells
" Highlights current line
set cursorline
set nowrap

" For searching
set ignorecase
set smartcase

set noswapfile
set autoread
set undodir=~/.vim/undodir
set undofile
set incsearch
" Line numbers
set number relativenumber

set so=15
set wildmenu
set tabstop=4
set shiftwidth=4
set noexpandtab
set splitright
set splitbelow
set mouse=a
set cmdheight=1
set updatetime=300
set noshowmode

set termguicolors
set nospell spelllang=en_ca

let mapleader=' '

nmap <Leader>v :source ~/.vimrc<CR>
nmap <Leader>s :set spell!<CR>
nmap j gj
nmap k gk
nmap <silent> <Leader>h :wincmd h<CR>
nmap <silent> <Leader>l :wincmd l<CR>
nmap <silent> <Leader>j :wincmd j<CR>
nmap <silent> <Leader>k :wincmd k<CR>
nmap zh z10h
nmap zl z10l
nmap Y y$
nmap <Leader>y "+y
nmap <Leader>Y "+y$
vmap <Leader>y "+y
nmap gn :tabnew<CR>
nmap gx :close<CR>
nmap ge :tabedit 
vmap <Leader>q <ESC>`>a"<ESC>`<i"<ESC>

" nmap <C-j> :tabn<CR>
" nmap <C-k> :tabp<CR>
nmap <C-n> :tabnew<CR>
nmap <Leader>d :DiffSaved<CR>
nmap <silent> <Leader>< :tabmove -1<CR>
nmap <silent> <Leader>> :tabmove +1<CR>

" Coc Bindings
imap <C-j> <Plug>(coc-snippets-expand)
nmap <silent> <Leader>cd <Plug>(coc-definition)
nmap <silent> <Leader>cr <Plug>(coc-rename)
nmap <silent> <C-l> :CocAction<CR>
nnoremap <silent><nowait> <space>p  :<C-u>CocListResume<CR>
inoremap <silent><expr> <c-@> coc#refresh()
nnoremap <silent> K :call <SID>show_documentation()<CR>
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

nmap <Leader>f :ClangFormat<CR>

" Compilation / run
" Open terminal in current file's directory
nmap <silent> <expr> <Leader>t ":Dispatch! alacritty --working-directory='" . expand('%:p:h') . "'<CR>"
nmap <silent> <Leader>o :Dispatch! ~/scripts/opener.sh "%"<CR>
nmap <silent> <Leader>cc :Dispatch! ~/scripts/compiler.sh "%"<CR>:Copen<CR>
nmap <silent> <Leader>C :Copen<CR>
nmap <Leader>rp :ter python3 "%"<CR>
nmap <Leader>rm :!$BROWSER "%" &<CR><CR><C-L>
nmap <Leader>rs :ter ++rows=6 sh "%"<CR>

""" FZF Bindings
nmap <C-p> :Files<CR>

vmap J :m '>+1<CR>gv=gv
vmap K :m '<-2<CR>gv=gv

autocmd BufRead *.nasm exe "set ft=asm"
autocmd BufWritePost *.tex exe "Dispatch! ~/scripts/compiler.sh '%'"
autocmd BufWritePost ~/colors/* silent! execute "!xrdb ~/.Xresources" | redraw!
autocmd BufWritePost *.Xresources silent! execute "!xrdb ~/.Xresources" | redraw!

call plug#begin('~/.vim/plugged')
Plug 'morhetz/gruvbox'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-dispatch'
Plug 'mboughaba/i3config.vim'
Plug 'ap/vim-css-color'
Plug 'junegunn/fzf.vim'

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'rhysd/vim-clang-format'

" COLORS
Plug 'gryf/wombat256grf'

" For automatically reloading buffer on file change
Plug 'djoshea/vim-autoread'

Plug 'vimwiki/vimwiki'
call plug#end()

colorscheme gruvbox
let g:gruvbox_contrast_dark="soft"
let g:gruvbox_guisp_fallback='bg'
set bg=dark

" vimwiki
let wiki_1 = {}
let wiki_1.path = '~/vimwiki/'
let wiki_1.syntax = 'markdown'
let wiki_1.ext = '.md'

let wiki_2 = {}
let wiki_2.path = '/mnt/hdd/Documents/School/Sem 3/vimwiki/'
let wiki_2.syntax = 'markdown'
let wiki_2.ext = '.md'

let g:vimwiki_global_ext = 0
let g:vimwiki_list = [wiki_2, wiki_1]

command W execute("w")
command Q execute("q")
command Date execute("read !date '+\\%b \\%d, \\%G'")

function! s:DiffWithSaved()
	let filetype=&ft
	diffthis
	vnew | r # | normal! 1Gdd
	diffthis
	exe "setlocal bt=nofile bh=wipe nobl noswf ro ft=" . filetype
endfunction
com! DiffSaved call s:DiffWithSaved()

hi User1 ctermfg=black ctermbg=gray
hi User2 ctermfg=black ctermbg=blue
hi User3 ctermfg=black ctermbg=magenta
hi User4 ctermfg=black ctermbg=yellow
hi User5 ctermfg=black ctermbg=cyan
hi User6 ctermfg=none ctermbg=black

au InsertLeave * hi User1 ctermbg=grey
au InsertEnter * hi User1 ctermbg=green

" always displays statusline
set laststatus=2
let g:currentmode={
    \ 'n'  : 'NORMAL ',
    \ 'v'  : 'VISUAL ',
    \ 'V'  : 'V·Line ',
    \ '' : 'V·Block ',
    \ 'i'  : 'INSERT ',
    \ 'R'  : 'R ',
    \ 'Rv' : 'V·Replace ',
    \ 'c'  : 'Command ',
    \ 't'  : 'TESTING ',
    \}
set statusline=
set statusline+=%1*\ %1*%{toupper(g:currentmode[mode()])}
set statusline+=%6*\ %f
set statusline+=\ %6*\ %{&modified?'[+]':''}
set statusline+=\ %=%1*\ %v:%l\/%L
set statusline+=\ "

