"------------------------------------------------------------------------------"
"------------------------------------------------------------------------------"
"------------------------------------------------------------------------------"


"------------------------------------------------------------------------------"
"-------------------------------Generel-Options--------------------------------"
"------------------------------------------------------------------------------"
"--------------------------Mostly-Stolen-From-Mendez---------------------------"
"------------------------------------------------------------------------------"
"------------------------------------------------------------------------------"

set nocompatible
set pastetoggle=<F2>
set colorcolumn=+1
set title
set nowrap
set backspace=eol,indent,start

"------------------------------------------------------------------------------"
"----------------------------User-Defined-Commands-----------------------------"
"------------------------------------------------------------------------------"
"------------------------------------------------------------------------------"

" command Bringback \(\s\|\t\|\r\)\@!.
command! Showblank set list!
command! Switchclip :if &l:clipboard == 'unnamed' | :set clipboard=unnamedplus
	\ | :echo "Clipboard set to X servers" | :else | :set clipboard=unnamed
	\ | :echo "Clipboard set to local" | :endif  
"Gonna move this to a scripts folder now
"command! Reopen 


"------------------------------------------------------------------------------"
"-------------------------------------Maps-------------------------------------"
"------------------------------------------------------------------------------"

map <F4> :Switchclip<cr>
map <Esc>l :Showblank<cr>
map qq :q<cr>
		"I don't need the q buffer, and I do this when i want to quit."
cabbrev sfs syntax sync from start
		"so that I don't have to type it out, but it doesn't steal it"
cabbrev h tab help
inoremap <C-space> <C-x><C-o>
					"Omnicomplete to Space"
inoremap jj <Esc>
				"Gonna steal mendez's idea to get out of insert mode without esc hunting" lsdklf
"Hell, I'll try this. Less shift that way."
noremap ; :


"------------------------------------------------------------------------------"
"------------------------------------Syntax------------------------------------"
"------------------------------------------------------------------------------"
syntax enable
set foldmethod=syntax
set smarttab autoindent
filetype plugin indent detect
set showmatch
set list listchars=tab:>.,trail:·,extends:§,precedes:¾,nbsp:¤,eol:ϟ  "Show bad whitespace"
set incsearch	      "will show incremental search, like in firefox and emacs.
set smartcase	      "ignore CASE case if search is all lower case, otherwise
				"case sensitive
set hlsearch nohlsearch "disable highlighting every entry by default (Thank god).
set autochdir	      "change the active working directory for gvim to curr
				"directory
set wildignore=*.swp,*.bak,*.pyc,*.class,*.aux,*.hi
			"Ignore files type when auto-completing

"------------------------------------------------------------------------------"
"------------------------------Special-Features--------------------------------"
"------------------------------------------------------------------------------"

set clipboard=unnamed
set mouse=a
let g:tex_fold_enabled=1
set omnifunc=syntaxcomplete#Complete
autocmd BufNewFile,BufRead *.txt set textwidth=80
autocmd BufNewFile,BufRead .vimrc,*.vim colorscheme elflord
"Need A TabEnter page."


"Can *NOT* stand those colors in vimdiff. They have to go. Even this isn't much
"better......
if &diff
	colorscheme desert
else
	colorscheme default "This needs to change as well.
endif



"Omnifunction! Maybe I'll actaully learn how to use this someday!"
if has("autocmd") && exists("+omnifunc")
        autocmd Filetype *
                    \   if &omnifunc == "" |
                    \           setlocal omnifunc=syntaxcomplete#Complete |
                    \   endif
endif



"------------------------------------------------------------------------------"
"----------------------------------Modeline------------------------------------"
"------------------------------------------------------------------------------"
"------------Cause-some-of-these-settings-are-annoying-in-.vimrc!--------------"
"------------------------------------------------------------------------------"
		       " vim: set textwidth=0 list!: "
