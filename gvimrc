
set lines=65 columns=160
colorscheme default
"set guifont=Monaco:h10

set relativenumber
set colorcolumn=85

if has("gui_macvim")
  macmenu &File.New\ Tab key=<nop>
  map <D-t> <Plug>PeepOpen
end

NERDTree
