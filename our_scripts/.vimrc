" How to Use
" Install
"   :NeoBundleInstall
" Update
"   :NeoBundleUpdate
" Clean
"   :NeoBundleClean

syntax on
set number
set title
set ruler
set paste
set showmode
set expandtab
set tabstop=2
set shiftwidth=2
set hlsearch
nmap <Esc><Esc> :nohlsearch<CR><Esc>
set vb t_vb=
filetype on
autocmd FileType c,cpp,perl,rb,php,html,erl set cindent
autocmd FileType python set tabstop=4 shiftwidth=4 expandtab
" Ruby t setting --------------------"
autocmd FileType ruby setl nocompatible
autocmd FileType ruby setl autoindent
autocmd Filetype ruby setl expandtab tabstop=2 shiftwidth=2 softtabstop=2 textwidth=80
autocmd FileType ruby compiler ruby
"-----------------------------------

set autoindent smartindent
set shiftwidth=4
set enc=utf-8
set fenc=utf-8
set backspace=indent,eol,start

set list
set listchars=tab:>-,extends:<,trail:-,eol:<


" NeoBundle
set nocompatible
filetype plugin indent off

if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim
  call neobundle#rc(expand('~/.vim/bundle'))
endif 

NeoBundleFetch 'Shougo/neobundle.vim'

" 以下は必要に応じて追加
NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/neosnippet.vim'
NeoBundle 'scrooloose/syntastic.git'
NeoBundle 'vim-ruby/vim-ruby'

"syntastic
let g:syntastic_enable_signs=1
let g:syntastic_auto_loc_list=2

"=======================================================
" colorscheme
" ------------------------------------------------------
NeoBundle 'w0ng/vim-hybrid'
NeoBundle 'chriskempson/vim-tomorrow-theme'

syntax on
set background=dark
if ($ft=='ruby')
  colorscheme Tomorrow-Night-Bright
else
  colorscheme hybrid
endif

hi Search	guifg=#90fff0 guibg=#2050d0	ctermfg=white ctermbg=darkblue cterm=underline term=underline
hi Comment	guifg=#80a0ff ctermfg=darkred
hi LineNr ctermbg=black guifg=#8F908A
hi SpecialKey term=underline ctermfg=darkgray guifg=darkgray
