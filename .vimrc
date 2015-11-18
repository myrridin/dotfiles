set t_Co=256      " 256 Color support
execute pathogen#infect()
syntax on
filetype plugin indent on

" Leader
let mapleader = " "

set backspace=2   " Backspace deletes like most programs in insert mode
set nobackup
set nowritebackup
set noswapfile    " http://robots.thoughtbot.com/post/18739402579/global-gitignore#comment-458413287
set history=50
set number
set laststatus=2
set tabstop=2
set shiftwidth=2
set shiftround
set expandtab
set list listchars=tab:»·,trail:·,nbsp:·

let g:Tlist_Ctags_Cmd="ctags --exclude='*.js'"

" Open Ctrl P Menu in mixed mode
map <Leader><Leader> :CtrlPMixed<CR>
" Regenerate ctags
map <Leader>ct :!ctags -R .<CR>
" Prev/Next Buffer
map <Leader>bp :bprevious<CR>
map <Leader>bn :bnext<CR>
map <Leader>q :bd<CR>


" vim-rspec mappings
nnoremap <Leader>t :call RunCurrentSpecFile()<CR>
nnoremap <Leader>s :call RunNearestSpec()<CR>
nnoremap <Leader>l :call RunLastSpec()<CR>

" Run commands that require an interactive shell
nnoremap <Leader>r :RunInInteractiveShell<space>

" Treat <li> and <p> tags like the block tags they are
let g:html_indent_tags = 'li\|p'

map <leader>re :w<CR>:!clear<CR>:!elixir %<CR>

" Airline configuration
let g:airline#extensions#tabline#enabled = 1
