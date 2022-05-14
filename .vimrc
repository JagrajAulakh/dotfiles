"=================================
"     _     _    _    _______
"    (_)   (_)  | |  (_______)
"     _     _   | |   _  _  _
"    | |   | |  | |  | ||_|| |
"     \ \ / /   | |  | |   | |
"      \___/    |_|  |_|   |_|
"    
"=================================


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
set exrc secure
set incsearch
set nohlsearch
set path+=**
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
set colorcolumn=80 textwidth=80

set termguicolors
set nospell spelllang=en_ca
" Opens new buffers in new tab, unless already open. Then it switches to it
set switchbuf+=usetab,newtab

let mapleader=' '

nmap <Leader>v :source ~/.vimrc<CR>
nmap <Leader>s :setlocal spell!<CR>
nmap j gj
nmap k gk
nmap zh z10h
nmap zl z10l
" Make Y behave like it should
nmap Y y$

"--------------------------
" System clipboard bindings
"--------------------------
nmap <Leader>y "+y
nmap <Leader>Y "+y$
vmap <Leader>y "+y
nmap <Leader>p "+p
vmap <Leader>p "+p

"--------------------
" Tab/Window bindings
"--------------------
nmap ge :tabedit 
nmap <C-n> :tabnew<CR>

nmap <C-e> :RnvimrToggle<CR>
tmap <C-e> <C-\><C-n>:RnvimrToggle<CR>
tmap <M-r> <C-\><C-n>:RnvimrResize<CR>
nmap <Leader>dd :DiffSaved<CR>
nmap <silent> <Leader>< :tabmove -1<CR>
nmap <silent> <Leader>> :tabmove +1<CR>
nmap <silent> <leader>fw :Windows<CR>

"-------------
" Coc Bindings
"-------------

" expand snippet
imap <C-j> <Plug>(coc-snippets-expand-jump)
let g:coc_snippet_next = '<c-j>'
let g:coc_snippet_prev = '<c-k>'

" show suggestion menu
inoremap <silent><expr> <C-space> coc#refresh()
" COC-goto-definition
nnoremap <silent> <leader>cgd <Plug>(coc-definition)
" COC-goto-references
nnoremap <silent> gr <Plug>(coc-references)
" COC-rename
nnoremap <silent> <Leader>cr <Plug>(coc-rename)
" COC-action
nnoremap <silent> <leader>ca :CocAction<CR>
" COC-definition
nnoremap <silent> <leader>cd :call <SID>show_documentation()<CR>
" COC-snippets
nnoremap <silent> <leader>cs :tabnew %<CR>:CocCommand snippets.editSnippets<CR>
" Show function hints
inoremap <silent> <C-p> <C-\><C-O>:call CocActionAsync('showSignatureHelp')<cr>

" nnoremap <silent><nowait> <Leader>p  :<C-u>CocListResume<CR>
command! -nargs=? Fold :call     CocAction('fold', <f-args>)
function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction


" Compilation / run
" Open terminal in current file's directory
nmap <silent> <expr> <Leader>t ":Dispatch! exo-open --launch TerminalEmulator --working-directory='" . expand('%:p:h') . "'<CR>"
nmap <silent> <Leader>o :Dispatch ~/scripts/opener.sh "%"<CR>
nmap <silent> <Leader>cc :Dispatch ~/scripts/compiler.sh "%"<CR>:Copen<CR>
nmap <Leader>w :Dispatch! ~/scripts/website_opener.sh %<CR>
nmap <silent> <Leader>C :Copen<CR>

""" FZF Bindings
" nmap <C-p> :Files<CR>
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nmap <M-q> :copen<CR>
nmap <M-k> :cprev<CR>
nmap <M-j> :cnext<CR>
nmap <F3> :Rg 

vmap J :m '>+1<CR>gv=gv
vmap K :m '<-2<CR>gv=gv

augroup syntax_things
	autocmd!
	autocmd BufRead *.asm exe "set ft=masm commentstring=;%s"
	autocmd BufRead *.c,*.h,*.cpp,*.hpp exe "set commentstring=//%s"
	autocmd FileType json syntax match Comment +\/\/.\+$+
augroup END

augroup auto_save_things
	autocmd!
	autocmd BufWritePost *.tex exe "Dispatch! ~/scripts/compiler.sh '%'"
	autocmd BufWritePost ~/colors/* silent! execute "!xrdb ~/.Xresources" | redraw!
	autocmd BufWritePost *.Xresources silent! execute "!xrdb ~/.Xresources" | redraw!
augroup END

augroup troll_zain_lmao
	autocmd!
	autocmd BufReadPost COMMIT_EDITMSG setlocal colorcolumn=0 textwidth=0 | nmap <silent> <leader>z mzA @zainaraza43`z
augroup END

"""""""""
" PLUGINS
"""""""""
call plug#begin('~/.vim/plugged')

" ranger floating window integration
Plug 'kevinhwang91/rnvimr'

" Comment blocks of code
Plug 'tpope/vim-commentary'

Plug 'tpope/vim-dispatch'
" Git greatness
Plug 'tpope/vim-fugitive'

Plug 'junegunn/fzf.vim'
Plug 'jremmen/vim-ripgrep'

" Plug 'dhruvasagar/vim-table-mode'
Plug 'mattn/emmet-vim'

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'neoclide/coc-snippets'

Plug 'mhinz/vim-signify'

" COLORS
Plug 'gryf/wombat256grf'
Plug 'morhetz/gruvbox'
Plug 'dracula/vim'

" For automatically reloading buffer on file change
Plug 'djoshea/vim-autoread'

" SYNTAX
Plug 'tikhomirov/vim-glsl'       " GLSL
Plug 'mboughaba/i3config.vim'    " i3wm
Plug 'yuezk/vim-js'              " JavaScript
Plug 'maxmellon/vim-jsx-pretty'  " JSX (JavaScript XML)
Plug 'ap/vim-css-color'

"PRETTIER
Plug 'prettier/vim-prettier', {
			\ 'do': 'yarn install --frozen-lockfile --production',
			\ 'for': ['javascript', 'typescript', 'css', 'scss', 'json', 'graphql', 'markdown', 'vue', 'svelte', 'yaml', 'html'] }

call plug#end()

colorscheme gruvbox
let g:gruvbox_contrast_dark="soft"
let g:gruvbox_guisp_fallback='bg'
set bg=dark

command! W execute("w")
command! Q execute("q")
command! Date execute("read !date '+\\%b \\%d, \\%G'")

function! s:DiffWithSaved()
	let filetype=&ft
	diffthis
	vnew | r # | normal! 1Gdd
	diffthis
	exe "setlocal bt=nofile bh=wipe nobl noswf ro ft=" . filetype
endfunction
com! DiffSaved call s:DiffWithSaved()

" PRETTIER SETTINGS
let g:prettier#autoformat = 1
let g:prettier#autoformat_require_pragma = 0
let g:prettier#config#use_tabs = 'false'

hi User1 guifg=black guibg=gray    ctermfg=black ctermbg=gray
hi User2 guifg=black guibg=blue    ctermfg=black ctermbg=blue
hi User3 guifg=black guibg=magenta ctermfg=black ctermbg=magenta
hi User4 guifg=black guibg=yellow  ctermfg=black ctermbg=yellow
hi User5 guifg=black guibg=cyan    ctermfg=black ctermbg=cyan
hi User6 guifg=white guibg=black   ctermfg=white  ctermbg=black

au InsertLeave * hi User1 guibg=grey ctermbg=grey
au InsertEnter * hi User1 guibg=#98971a ctermbg=green

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
set statusline+=\ %=
set statusline+=\ %6*%y
set statusline+=\ %1*\ %v:%l\/%L
set statusline+=\ %6*\ [%p%%]
set statusline+=\ "

" GUI options
set guifont=Ubuntu\ Mono\ 18
set guicursor=n-v-c:block-Cursor
set guicursor+=i:ver25-iCursor


" Neovide settings
let g:neovide_refresh_rate=144
let g:neovide_cursor_animation_length=0.15
let g:neovide_cursor_antialiasing=v:true

let g:neovide_cursor_vfx_mode="wireframe"
let g:neovide_cursor_vfx_particle_density=7
let g:neovide_cursor_vfx_opacity=200
let g:neovide_cursor_vfx_particle_lifetime=10
let g:neovide_cursor_vfx_particle_curl=1.0

