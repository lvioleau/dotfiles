" General
set number
set cursorline
set hidden
set showcmd
set autoread
set laststatus=2
set spelllang=en
set termguicolors
set signcolumn=yes
set updatetime=300

" Some servers have issues with backup files, see #649
set nobackup
set nowritebackup

" Better display for messages
set cmdheight=2

" Search
set incsearch

" Indent
" set autoindent
" set smartindent
set smarttab

set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab

" Scrolling
set scrolloff=8
set sidescrolloff=15
set sidescroll=1

" Clang format
let g:clang_format#code_style='llvm'
let g:clang_format#auto_format=1
let g:clang_format#detect_style_file=1
let g:clang_format#auto_format_on_insert_leave=0

filetype plugin on
filetype indent on

" FZF 
nnoremap <C-p> :<C-u>FZF<CR>

" Colorscheme
set background=dark
let g:airline_theme='one'
let g:one_allow_italics = 1
colorscheme one
let g:airline_theme='one'
let g:airline_powerline_fonts = 1

" Chromatica
let g:chromatica#libclang_path='/home/laurent/llvm/llvm-6.0.1.src/_build/lib'
let g:chromatica#global_args = ['-isystem/home/laurent/llvm/llvm-6.0.1.src/_build/lib/clang/6.0.1/include']
let g:chromatica#enable_at_startup=0

let g:lsp_log_verbose = 1
let g:lsp_log_file = expand('~/vim-lsp.log')

" Coc

" don't give |ins-completion-menu| messages.
set shortmess+=c

" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current position.
" Coc only does snippet and additional edit on confirm.
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

" Use `[c` and `]c` to navigate diagnostics
nmap <silent> [c <Plug>(coc-diagnostic-prev)
nmap <silent> ]c <Plug>(coc-diagnostic-next)

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Using CocList
" Show all diagnostics
nnoremap <silent> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions
nnoremap <silent> <space>e  :<C-u>CocList extensions<cr>
" Show commands
nnoremap <silent> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document
nnoremap <silent> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols
nnoremap <silent> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list
nnoremap <silent> <space>p  :<C-u>CocListResume<CR>

packadd minpac
call minpac#init()
call minpac#add('junegunn/fzf')
call minpac#add('airblade/vim-gitgutter')
call minpac#add('rhysd/vim-clang-format')
call minpac#add('tpope/vim-unimpaired')
call minpac#add('tpope/vim-projectionist')
call minpac#add('tpope/vim-fugitive')
call minpac#add('rakr/vim-one')
call minpac#add('vim-airline/vim-airline')
call minpac#add('arakashic/chromatica.nvim')
call minpac#add('neoclide/coc.nvim', {'branch': 'release'})

