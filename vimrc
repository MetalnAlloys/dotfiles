" All system-wide defaults are set in $VIMRUNTIME/archlinux.vim (usually just
" /usr/share/vim/vimfiles/archlinux.vim) and sourced by the call to :runtime
" you can find below.  If you wish to change any of those settings, you should
" do it in this file (/etc/vimrc), since archlinux.vim will be overwritten
" everytime an upgrade of the vim packages is performed.  It is recommended to
" make changes after sourcing archlinux.vim since it alters the value of the
" 'compatible' option.

" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages.
runtime! archlinux.vim

" If you prefer the old-style vim functionalty, add 'runtime! vimrc_example.vim'
" Or better yet, read /usr/share/vim/vim80/vimrc_example.vim or the vim manual
" and configure vim to your own liking!

" do not load defaults if ~/.vimrc is missing
"let skip_defaults_vim=1

set number
syntax on
set textwidth=79
set tabstop=4
set shiftwidth=4
set expandtab
set softtabstop=4
set autoindent
set cursorline
"let base16colorspace=256

colorscheme nord 

set mouse=a
set splitbelow
set fileformat=unix
" Enable folding
set foldmethod=indent
set foldlevel=99
filetype plugin indent on
set t_Co=256
set modeline
set background=dark
set ttyfast
set timeout timeoutlen=1000 ttimeoutlen=50
set noswapfile
"set termguicolors



"let g:gruvbox_contrast_dark = 'hard'

"Commands
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && NERDTree.isTabTree()) | q | endif



" Keymaps
map <C-n> :NERDTreeToggle<CR>
"nnoremap H gTPlug 'severij/vadelma'
"nnoremap L gt
map <C-t><up> :tabr<cr>
map <C-t><down> :tabl<cr>
map <C-t><left> :tabp<cr>
map <C-t><right> :tabn<cr>
nnoremap <space> za
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)
map <C-e> :!chmod u+x %<CR>


let g:netrw_banner = 0
let g:netrw_browse_split = 3
let g:netrw_winsize = 25

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

set laststatus=2





call plug#begin('~/.vim/plugged')
if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif
"Plug 'Rigellute/rigel'
"Plug 'haishanh/night-owl.vim'
Plug 'https://github.com/itchyny/lightline.vim'
Plug 'scrooloose/nerdtree'
Plug 'https://github.com/tmhedberg/SimpylFold'
"Plug 'arcticicestudio/nord-vim'
Plug 'jiangmiao/auto-pairs'
Plug 'https://github.com/vim-python/python-syntax'
Plug 'junegunn/vim-easy-align'
Plug 'https://github.com/vifm/vifm.vim'
Plug 'numirias/semshi', {'do': ':UpdateRemotePlugins'}
Plug 'sheerun/vim-polyglot'
Plug 'neomake/neomake'
Plug 'ryanoasis/vim-devicons'
Plug 'yuttie/hydrangea-vim'
Plug 'nightsense/snow'
"Plug 'ale-cci/aqua-vim'
Plug 'severij/vadelma'
"Plug 'danilo-augusto/vim-afterglow'
"Plug 'wolf-dog/nighted.vim'
"Plug 'whatyouhide/vim-gotham'
"Plug 'sheerun/vim-polyglot'
call plug#end()


let g:deoplete#enable_at_startup = 1

let g:lightline = {
      \ 'colorscheme': 'nord',
      \ 'component': {
      \   'readonly': '%{&readonly?"":""}',
      \ },
      \ 'separator':    { 'left': '', 'right': '' },
      \ 'subseparator': { 'left': '', 'right': '' },
      \ }

"let g:lightline = {
      "\ 'colorscheme': 'hydrangea'
      "\ }

