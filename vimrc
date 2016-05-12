" =====================================================
" Vundle
" =====================================================
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

"
" Vundle
"
Plugin 'VundleVim/Vundle.vim'

"
" Languages
"
Plugin 'vim-ruby/vim-ruby'			          " Ruby
Plugin 'fatih/vim-go'                     " Go

"
" General purpose plugins
"
Plugin 'bling/vim-airline'			          " Status line
Plugin 'bronson/vim-trailing-whitespace'	" Whitespace
Plugin 'tpope/vim-fugitive'               " Fugitive, for git
Plugin 'godlygeek/tabular'                " Tabs
Plugin 'ctrlpvim/ctrlp.vim'               " CtrlP Fuzzy Finder

"
" Syntax highlighting
"
Plugin 'slim-template/vim-slim.git'		    " Slim
Plugin 'kchmck/vim-coffee-script'         " Coffeescript
Plugin 'cespare/vim-toml'                 " TOML
Plugin 'plasticboy/vim-markdown'          " Markdown
Plugin 'ekalinin/Dockerfile.vim'          " Dockerfile
Plugin 'yosssi/vim-ace'                   " Ace
Plugin 'bkad/vim-terraform'               " Terraform
Plugin 'tpope/vim-haml'                   " Haml/Sass/Scss
Plugin 'qbbr/vim-twig'                    " Twig
Plugin 'elixir-lang/vim-elixir'           " Elixir
Plugin 'b4b4r07/vim-hcl'                  " HCL

"
" Color schemes
"
Plugin 'altercation/vim-colors-solarized'
Plugin 'wesgibbs/vim-irblack'
Plugin 'gosukiwi/vim-atom-dark'
Plugin 'zenorocha/dracula-theme', {'rtp': 'vim/'}

"
"
" Call Vundle
call vundle#end()            " required
filetype plugin indent on    " required

" =====================================================
" Done with Vundle
" =====================================================

" Set the colorscheme
colorscheme dracula

" Set the font
set guifont=Dejavu_Sans_Mono_for_Powerline:h15

" Configure vim-airline
let g:airline_powerline_fonts = 1
set laststatus=2

" General settings
set splitright
set splitbelow

" History and backup
silent !mkdir -p ~/.vim/tmp
set history=100
set backup
set backupdir=~/.vim/tmp
set directory=~/.vim/tmp

" Undoing
if has("gui_macvim")
	silent !mkdir -p ~/.vim/undo
	set undofile
	set undodir=~/.vim/undo
end

" Tab stops
set tabstop=2
set softtabstop=2
set shiftwidth=2
set smarttab
set expandtab
autocmd Filetype ruby setlocal ts=2 sts=2 sw=2
autocmd Filetype go setlocal ts=4 sts=4 sw=4

" Remove trailing spaces
function! TrimWhiteSpace()
  %s/\s*$//
  ''
:endfunction
map WW :call TrimWhiteSpace()<CR>

" Disable annoying MacVim bell
autocmd! GUIEnter * set vb t_vb=

" Always show line numbers
set number

" Use goimports
let g:go_fmt_command = "goimports"

" Disable Markdown file folding
let g:vim_markdown_folding_disabled=1

" File types
au BufRead,BufNewFile *.md set syntax=markdown textwidth=80

" Disable annoying Ruby tooltip
if has("gui_running")
  set balloonexpr=
end

" Lock CtrlP to current dir and subdirs (but no parents)
let g:ctrlp_working_path_mode = ''

" Do not limit the amount of files CtrlP scans
let g:ctrlp_max_files = 0

" Ignore some stuff from CtrlP
set wildignore+=*/tmp/*,*/node_modules,*.so,*.swp,*.zip

" Always refresh the cache when CtrlP-ing
let g:ctrlp_cmd = 'let g:ctrlp_newcache = 1 <bar> CtrlP'

" Increase linespace to 1px
set linespace=1

" Custom function to do either <tab> or autocomplete
function! TabOrAutocomplete()
    let col = col('.') - 1
    if !col || getline('.')[col - 1] !~ '\k'
        return "\<tab>"
    else
        return "\<c-n>"
    endif
endfunction
inoremap <tab> <c-r>=TabOrAutocomplete()<cr>

" Make sure kebap-case-text is autocompleted
set iskeyword+=\-

set textwidth=0
set wrapmargin=0
