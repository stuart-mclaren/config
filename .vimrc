colorscheme mclaren
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
set et
set ts=4
set colorcolumn=80

function TrimWhiteSpace()
  %s/\s*$//
  ''
:endfunction

command! TWS call TrimWhiteSpace()
