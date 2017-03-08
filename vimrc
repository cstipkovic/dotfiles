" curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
"    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

" Vim-Plug - Plugins
call plug#begin('~/.vim/plugged')
	Plug 'scrooloose/nerdtree'
	Plug 'editorconfig/editorconfig-vim'
	Plug 'joshdick/onedark.vim'
	Plug 'jistr/vim-nerdtree-tabs'
	Plug 'kien/ctrlp.vim'
	Plug 'wakatime/vim-wakatime'
	Plug 'scrooloose/syntastic'
	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'
	Plug 'airblade/vim-gitgutter'
	Plug 'scrooloose/nerdcommenter'
	Plug 'jiangmiao/auto-pairs'
	Plug 'isruslan/vim-es6'
	Plug 'mustache/vim-mustache-handlebars'
	Plug 'mattn/emmet-vim'
	Plug 'tpope/vim-fugitive'
	Plug 'einars/js-beautify'
	Plug 'mileszs/ack.vim'
call plug#end()

" Options
set number
syntax on
colorscheme onedark
set cursorline	
set nowrap
set tw=120
set clipboard=unnamed
set clipboard+=unnamedplus
set modifiable
set backspace=2
set autoread

" Mapping
let mapleader = ","
" split window vertically
map <C-w>v <nop>
nnoremap <leader>wv <C-w>v
" move cursor to the left window (vertical split)
nnoremap <leader>wh <C-w>h
" move cursor to the right window (vertical split)
nnoremap <leader>wl <C-w>l
nnoremap <leader>ww <C-w>w
nnoremap <leader>bn :bn<cr>
nnoremap <leader>bd :bd<cr>
nnoremap <leader>wo <C-w>o
nnoremap <leader>bd :bd<cr>
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

" Airline
set laststatus=2
let g:airline_theme = 'onedark'
let g:airline#extensions#tabline#enabled#branch = 1

" NerdTree
nnoremap <leader>\ :NERDTreeToggle<cr>

" Ctrl-P
let ctrlp_match_window = 'bottom,order:btt,min:0,max:20,results:60'
let ctrlp_mruf_max = 5000
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files . -co --exclude-standard', 'find %s -type f']

" Arquivos ignorados
set wildignore+=/bin/*,/node_modules/*,*/dist/*,*.so,*.class,*.git,*/.git/*,*.tar.gz,*.zip,*.bz2,*/tmp/*,*/.tmp/*,*/target/*,*/build/*,/*pagseguro-*,*/sandbox/*,*/sap-integration*,*/red-batch/*,*/rabbit-support/*,*/testes-integracao/*,*/efrete*,*/content-policy*,*/admin*
" Indentacao
set tabstop=4 softtabstop=0 shiftwidth=4 smarttab
set listchars=tab:>\ ,trail:·,extends:\#,nbsp:.
set list!