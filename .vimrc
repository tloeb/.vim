
" Macht, dass man niemals bis zum Rand scrollen muss
set scrolloff=5

" Pathogen for Path Manipulation needed for Plugins
call pathogen#infect()

"statuszeile
set laststatus=2
set statusline=
set statusline+=%-3.3n\                      " buffer nummer
set statusline+=%f\                          " dateiname
set statusline+=%h%m%r%w                     " status flags
set statusline+=\[%{strlen(&ft)?&ft:'none'}] " dateityp
set statusline+=%=                           " folgendes rechts
set statusline+=0x%-8B                       " hex-wert des zeichens
set statusline+=%-14(%l,%c%V%)               " zeile, zeichen
set statusline+=%<%P                         " datei position

"suchergebnisse hilighten
set hlsearch

"Mit [F8] Automatisches Einrücken und Treppeneffekt beim Copy & Paste
"verhindern
set pastetoggle=<F8>

" viminfo
set viminfo='10,\"30,:20,%,n~/.viminfo

" cursor-position anzeigen
set ruler

" zur sicherheit machen wir backups
set nobackup

" zur sicherheit nehmen wir einbackupdir ;)
set backupdir=~/vimbackup

" wir benutzen dunklen hintergrund 
set background=dark

" wir moechten smartindent
set smartindent

" mit suche am anfang fortfahren wenn ende der datei erreicht ist
set wrapscan

" zeige den befehl immer
set showcmd

" zeige alle aenderungen
set report=0

" das terminal ist nicht immer schnell (bsp. ssh-verbindung)
set nottyfast

" benutze autoindent
set autoindent

" expandiere tabs
set expandtab

" wieviele leerzeichen zum einruecken
set shiftwidth=4

" ersetze tabs mit » und leerzeichen mit ·
"set list listchars=tab:>·,trail:·

" nach 75 zeichen eine swap datei schreiben
set uc=75

" tabulator weite
set tabstop=4

" bei bearbeitung immer bei letzter position beginnen
" autocmd BufReadPost * if line("'\"") | exe "'\"" | endif

" NERDtree
autocmd vimenter * NERDTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

"set color="true"
syntax enable
colorscheme default 

" Syntax Highlighting aktivieren
filetype plugin on

"Airline Konfiguration

" Change the Seperators
" unicode symbols
  let g:airline_left_sep = '>'
"  let g:airline_left_sep = '¿'
  let g:airline_right_sep = '<'
"  let g:airline_right_sep = '¿'
"  let g:airline_linecolumn_prefix = '¿ '
"  let g:airline_linecolumn_prefix = '¿ '
"  let g:airline_linecolumn_prefix = '¶ '
"  let g:airline_branch_prefix = '¿ '
"  let g:airline_paste_symbol = '¿'
"  let g:airline_paste_symbol = 'Þ'
"  let g:airline_paste_symbol = '¿'

  " powerline symbols
"  let g:airline_left_sep = '¿'
"  let g:airline_left_alt_sep = '¿'
"  let g:airline_right_sep = '¿'
"  let g:airline_right_alt_sep = '¿'
"  let g:airline_branch_prefix = '¿ '
"  let g:airline_readonly_symbol = '¿'
"  let g:airline_linecolumn_prefix = '¿ 


" enable/disable fugitive/lawrencium integration
  let g:airline_enable_branch=1

" enable/disable syntastic integration
  let g:airline_enable_syntastic=0

" enable modified detection
  let g:airline_detect_modified=1

" enable paste detection
  let g:airline_detect_paste=1

" enable iminsert detection
  let g:airline_detect_iminsert=1

" change the default theme
  let g:airline_theme='dark'

" enable/disable usage of patched powerline font symbols
  let g:airline_powerline_fonts=1

" define the set of text to display for each mode.
" let g:airline_mode_map = {} " see source for current list

" define the set of filename match queries which excludes a window from having
" its statusline modified
" let g:airline_exclude_filenames = [] " see source for current list

" define the set of filetypes which are excluded from having its window
" statusline modified
" let g:airline_exclude_filetypes = [] " see source for current list

" defines whether the preview window should be excluded from have its window
" statusline modified (may help with plugins which use the preview window
" heavily)
" let g:airline_exclude_preview = 0


"Hilfedateien
"helptags /usr/share/vim/vim73/doc

set number "show line numbers
set tw=79 " width of document set nowrap "dont automatically wrap on load
set fo-=t " dont automatically wrap text when typing


" Unterstuetzung fuer Boxes
" Usage
"
"       ,mc     -   auskommentieren
"       ,xc     -   auskommentieren rueckgangig machen
" beta
"       ,mb     -   make box
"       ,xb     -   remove box
"
"  autocmd BufEnter * nmap ,mc !!boxes -d rap<CR>
"  autocmd BufEnter * vmap ,mc !boxes -d rap<CR>
"  autocmd BufEnter * nmap ,xc !!boxes -d rap -r<CR>
"  autocmd BufEnter * vmap ,xc !boxes -d rap -r<CR>
"  
"  autocmd BufEnter *.tex nmap ,mb !!boxes -d tex-box<CR>
"  autocmd BufEnter *.tex vmap ,mb !boxes  -d tex-box<CR>
"  autocmd BufEnter *.tex nmap ,xb !!boxes -d tex-box -r<CR>
"  autocmd BufEnter *.tex vmap ,xb !boxes  -d tex-box -r<CR>
"  
"  autocmd BufEnter *.tex nmap ,mc !!boxes -d tex-cmt<CR>
"  autocmd BufEnter *.tex vmap ,mc !boxes  -d tex-cmt<CR>
"  autocmd BufEnter *.tex nmap ,xc !!boxes -d tex-cmt -r<CR>
"  autocmd BufEnter *.tex vmap ,xc !boxes  -d tex-cmt -r<CR>
"  
"  autocmd BufEnter *.html nmap ,mc !!boxes -d html-cmt<CR>
"  autocmd BufEnter *.html vmap ,mc !boxes -d html-cmt<CR>
"  autocmd BufEnter *.html nmap ,xc !!boxes -d html-cmt -r<CR>
"  autocmd BufEnter *.html vmap ,xc !boxes -d html-cmt -r<CR>
"  
"  autocmd BufEnter *.[chly],*.[pc]c nmap ,mc !!boxes -d c-cmt<CR>
"  autocmd BufEnter *.[chly],*.[pc]c vmap ,mc !boxes -d c-cmt<CR>
"  autocmd BufEnter *.[chly],*.[pc]c nmap ,xc !!boxes -d c-cmt -r<CR>
"  autocmd BufEnter *.[chly],*.[pc]c vmap ,xc !boxes -d c-cmt -r<CR>
"  
"  autocmd BufEnter *.C,*.cpp,*.java nmap ,mc !!boxes -d java-cmt<CR>
"  autocmd BufEnter *.C,*.cpp,*.java vmap ,mc !boxes -d java-cmt<CR>
"  autocmd BufEnter *.C,*.cpp,*.java nmap ,xc !!boxes -d java-cmt -r<CR>
"  autocmd BufEnter *.C,*.cpp,*.java vmap ,xc !boxes -d java-cmt -r<CR>
"  
"  autocmd BufEnter .vimrc*,.exrc nmap ,mc !!boxes -d vim-cmt<CR>
"  autocmd BufEnter .vimrc*,.exrc vmap ,mc !boxes -d vim-cmt<CR>
"  autocmd BufEnter .vimrc*,.exrc nmap ,xc !!boxes -d vim-cmt -r<CR>
"  autocmd BufEnter .vimrc*,.exrc vmap ,xc !boxes -d vim-cmt -r<CR>
"
  nmap ,bf !!~/junk/boxes-dev/boxes -d tjc -s 75<CR>
  vmap ,bf !~/junk/boxes-dev/boxes -d tjc -s 75<CR>

  imap <C-J> <C-O>gqap
  inoremap # X<BS>#

map <C-t> :tabnew <Enter>
map <C-right> gt
map <C-left> gT

if &term =~ "xterm"
  "256 color --
  let &t_Co=256
  " restore screen after quitting
  set t_ti=ESC7ESC[rESC[?47h t_te=ESC[?47lESC8
  if has("terminfo")
    let &t_Sf="\ESC[3%p1%dm"
    let &t_Sb="\ESC[4%p1%dm"
  else
    let &t_Sf="\ESC[3%dm"
    let &t_Sb="\ESC[4%dm"
  endif
endif

highlight Comment ctermfg=lightblue
autocmd BufRead,BufNewFile   *.html set expandtab tabstop=2 shiftwidth=2 softtabstop=2
