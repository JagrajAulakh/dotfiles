--=======================================
--=    _______   _     _   _    _____
--=   (_______) (_)   (_) | | (_______)
--=    _     _   _     _  | |  _  _  _
--=   | |   | | | |   | | | | | ||_|| |
--=   | |   | |  \ \ / /  | | | |   | |
--=   |_|   |_|   \___/   |_| |_|   |_|
--=
--=======================================


require('opts')
require('keymaps')
require('autocmd')
require('plugins')

vim.cmd('colorscheme gruvbox')
vim.g.gruvbox_contrast_dark="soft"
vim.g.gruvbox_guisp_fallback='bg'
vim.opt.bg="dark"

vim.cmd([[ command! W execute("w") ]])
vim.cmd([[ command! Q execute("q") ]])
vim.cmd([[ com! Date execute("read !date '+\\%b \\%d, \\%G'") ]])

vim.cmd([[
function! s:DiffWithSaved()
	let filetype=&ft
	diffthis
	vnew | r # | normal! 1Gdd
	diffthis
	exe "setlocal bt=nofile bh=wipe nobl noswf ro ft=" . filetype
endfunction
com! DiffSaved call s:DiffWithSaved()
]])

vim.cmd([[
hi User1 guifg=black guibg=gray    ctermfg=black ctermbg=gray
hi User2 guifg=black guibg=blue    ctermfg=black ctermbg=blue
hi User3 guifg=black guibg=magenta ctermfg=black ctermbg=magenta
hi User4 guifg=black guibg=yellow  ctermfg=black ctermbg=yellow
hi User5 guifg=black guibg=cyan    ctermfg=black ctermbg=cyan
hi User6 guifg=white guibg=black   ctermfg=white  ctermbg=black
]])

vim.cmd("au InsertLeave * hi User1 guibg=grey ctermbg=grey")
vim.cmd("au InsertEnter * hi User1 guibg=#98971a ctermbg=green")

-- " always displays statusline
vim.cmd([[
let g:currentmode={
	\ 'n'  : 'NORMAL ',
	\ 'v'  : 'VISUAL ',
	\ 'V'  : 'V·Line ',
	\ '' : 'V·Block ',
	\ 'i'  : 'INSERT ',
	\ 'R'  : 'R ',
	\ 'Rv' : 'V·Replace ',
	\ 'c'  : 'Command ',
	\ 's'  : 'SELECT ',
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
]])


