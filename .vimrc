set nocompatible              " be iMproved, required
filetype off                  " required
set nu
syntax enable
set path+=**
set wildmenu
command! MakeTags !ctags -R .

let g:netrw_banner=0        " disable annoying banner
let g:netrw_browse_split=4  " open in prior window
let g:netrw_altv=1          " open splits to the right
let g:netrw_liststyle=3     " tree view
let g:netrw_list_hide=netrw_gitignore#Hide()
let g:netrw_list_hide.=',\(^\|\s\s\)\zs\.\S\+'

nnoremap ,html :-1read $HOME/.vim/.skeleton.html<CR>3jwf>a

set makeprg=bundle\ exec\ rspec\ -f\ QuickfixFormatter

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'posva/vim-vue'

Plugin 'pangloss/vim-javascript'

Plugin 'othree/html5.vim'

Plugin 'elzr/vim-json'

Plugin 'preservim/nerdtree'

Bundle 'jistr/vim-nerdtree-tabs'

Plugin 'vimwiki/vimwiki'

Plugin 'baruchel/vim-notebook'

Plugin 'axvr/org.vim'

Plugin 'lervag/vimtex'

Plugin 'jalvesaq/Nvim-R'

Plugin 'Shougo/vimfiler.vim'

Plugin 'mileszs/ack.vim'

Plugin 'vim-airline/vim-airline'

Plugin 'Shougo/deoplete.nvim'

Plugin 'Xuyuanp/nerdtree-git-plugin'

Plugin 'tiagofumo/vim-nerdtree-syntax-highlight'

Plugin 'airblade/vim-gitgutter'

Plugin 'ctrlpvim/ctrlp.vim'

Plugin 'scrooloose/nerdcommenter'

Plugin 'christoomey/vim-tmux-navigator'

Plugin 'morhetz/gruvbox'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

set tabstop=4
syntax on
set guifont=Monaco:h15
inoremap {      {}<Left>
inoremap {<CR>  {<CR>}<Esc>O
inoremap {{     {
inoremap {}     {}
filetype plugin on
au FileType php setl ofu=phpcomplete#CompletePHP
au FileType ruby,eruby setl ofu=rubycomplete#Complete
au FileType html,xhtml setl ofu=htmlcomplete#CompleteTags
au FileType c setl ofu=ccomplete#CompleteCpp
au FileType css setl ofu=csscomplete#CompleteCSS
set noerrorbells visualbell t_vb=
autocmd GUIEnter * set visualbell t_vb=
autocmd BufRead,BufNewFile *.vue setfiletype html
autocmd BufRead scp://* :set bt=acwrite
set splitbelow
" open terminal below all splits
cabbrev bterm bo term
if has('persistent_undo')      "check if your vim version supports it
  set undofile                 "turn on the feature
  set undodir=$HOME/.vim/undo  "directory where the undo files will be stored
  endif
