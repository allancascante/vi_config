" enable syntax highlighting
syntax enable

" show line numbers
set number

" set tabs to have 4 spaces
set ts=4

" indent when moving to the next line while writing code
set autoindent

" expand tabs into spaces
set expandtab

" when using the >> or << commands, shift lines by 4 spaces
set shiftwidth=4

" show a visual line under the cursor's current line 
set cursorline

" show the matching part of the pair for [] {} and ()
set showmatch

" enable all Python syntax highlighting features
let python_highlight_all = 1

" Pathogen load
filetype off

call pathogen#infect()
call pathogen#helptags()

filetype plugin indent on
syntax on

set foldmethod=indent
set foldlevel=99

" Override go-to.definition key shortcut to Ctrl-Shift-g
let g:pymode_rope_goto_definition_bind = "<C-S-G>"

" Override run current python file key shortcut to Ctrl-Shift-e
let g:pymode_run_bind = "<C-S-E>"

" Override view python doc key shortcut to Ctrl-Shift-d
let g:pymode_doc_bind = "<C-S-D>"

set wildmode=longest,list,full
set wildmenu

set background=dark
" solarized options
let g:solarized_visibility = "high"
let g:solarized_contrast = "high"
let g:solarized_termcolors=16
colorscheme solarized

" highligth text after 120 characters
match ErrorMsg '\%>120v.\+'

" Set a colored column at 120
autocmd FileType python set colorcolumn=120

" highlight non-ascii character
syntax match nonascii "[^\x00-\x7F]"
highlight nonascii guibg=Red ctermbg=6*

" configure the warning in python for lines longer than 120 columns 
let g:pymode_lint_options_pep8 = {'max_line_length': 120} 

" Complete keywords from not imported modules (could make completion slower)
" Enable autoimport used modules
call pymode#default('g:pymode_rope_autoimport', 0)
