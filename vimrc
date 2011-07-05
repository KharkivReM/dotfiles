call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

if has("mouse")
	set mouse=a
	set mousehide
endif
if has("gui_win32")
	source $VIMRUNTIME/mswin.vim
	set guifont=Consolas:h10:cANSI
else
	set guifont=Inconsolata:h14
endif
if has("gui_running") " gvim/win32 fails to do this automatically
	set background=light
	set lines=50 columns=100
else
	set background=dark
endif

set shiftwidth=4
set tabstop=4
syntax enable
filetype plugin indent on
colorscheme solarized

set laststatus=2
set statusline=[%l,%v\ %P%M]\ %f\ %r%h%w\ (%{&ff})\ %{fugitive#statusline()}
"set t_Co=256
"call togglebg#map("<F5>")

" Save Taskpaper files automatically
autocmd BufLeave,FocusLost *.taskpaper w
" Run wrapwithtag.vim script when opening html docs (shouldn't this be a
" filetype plugin? meh.
autocmd Filetype html,xml,aspvbs runtime scripts/wrapwithtag.vim

if exists("+autochdir")
	set autochdir " Change to file's current directory automatically
endif

" so full of hate
let g:filetype_asa = "aspvbs"
let g:filetype_asp = "aspvbs"

command Entities :call Entities()
function Entities()
  silent s/�/\&Agrave;/eg
  silent s/�/\&Aacute;/eg
  silent s/�/\&Acirc;/eg
  silent s/�/\&Atilde;/eg
  silent s/�/\&Auml;/eg
  silent s/�/\&Aring;/eg
  silent s/�/\&AElig;/eg
  silent s/�/\&Ccedil;/eg
  silent s/�/\&Egrave;/eg
  silent s/�/\&Eacute;/eg
  silent s/�/\&Ecirc;/eg
  silent s/�/\&Euml;/eg
  silent s/�/\&Igrave;/eg
  silent s/�/\&Iacute;/eg
  silent s/�/\&Icirc;/eg
  silent s/�/\&Iuml;/eg
  silent s/�/\&ETH;/eg
  silent s/�/\&Ntilde;/eg
  silent s/�/\&Ograve;/eg
  silent s/�/\&Oacute;/eg
  silent s/�/\&Ocirc;/eg
  silent s/�/\&Otilde;/eg
  silent s/�/\&Ouml;/eg
  silent s/�/\&Oslash;/eg
  silent s/�/\&Ugrave;/eg
  silent s/�/\&Uacute;/eg
  silent s/�/\&Ucirc;/eg
  silent s/�/\&Uuml;/eg
  silent s/�/\&Yacute;/eg
  silent s/�/\&THORN;/eg
  silent s/�/\&szlig;/eg
  silent s/�/\&agrave;/eg
  silent s/�/\&aacute;/eg
  silent s/�/\&acirc;/eg
  silent s/�/\&atilde;/eg
  silent s/�/\&auml;/eg
  silent s/�/\&aring;/eg
  silent s/�/\&aelig;/eg
  silent s/�/\&ccedil;/eg
  silent s/�/\&egrave;/eg
  silent s/�/\&eacute;/eg
  silent s/�/\&ecirc;/eg
  silent s/�/\&euml;/eg
  silent s/�/\&igrave;/eg
  silent s/�/\&iacute;/eg
  silent s/�/\&icirc;/eg
  silent s/�/\&iuml;/eg
  silent s/�/\&eth;/eg
  silent s/�/\&ntilde;/eg
  silent s/�/\&ograve;/eg
  silent s/�/\&oacute;/eg
  silent s/�/\&ocirc;/eg
  silent s/�/\&otilde;/eg
  silent s/�/\&ouml;/eg
  silent s/�/\&oslash;/eg
  silent s/�/\&ugrave;/eg
  silent s/�/\&uacute;/eg
  silent s/�/\&ucirc;/eg
  silent s/�/\&uuml;/eg
  silent s/�/\&yacute;/eg
  silent s/�/\&thorn;/eg
  silent s/�/\&yuml;/eg
endfunction

