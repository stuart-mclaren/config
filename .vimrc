colorscheme mclaren                                                             
highlight ExtraWhitespace ctermbg=red guibg=red                                 
match ExtraWhitespace /\s\+$/                                                   
set modeline                                                                    
set et                                                                          
set ts=4                                                                        
:set colorcolumn=80                                                             
function TrimWhiteSpace()                                                       
  %s/\s*$//                                                                     
  ''                                                                            
:endfunction                                                                    
                                                                                
command! TWS call TrimWhiteSpace()                                              
                                                                                
" Auto format Go files on save:                                                 
command! -buffer Fmt call s:GoFormat()                                          
function! s:GoFormat()                                                          
    let view = winsaveview()                                                    
    silent %!gofmt                                                              
    if v:shell_error                                                            
        let errors = []                                                         
        for line in getline(1, line('$'))                                       
            let tokens = matchlist(line, '^\(.\{-}\):\(\d\+\):\(\d\+\)\s*\(.*\)')
            if !empty(tokens)                                                   
                call add(errors, {"filename": @%,                               
                                 \"lnum":     tokens[2],                        
                                 \"col":      tokens[3],                        
                                 \"text":     tokens[4]})                       
            endif                                                               
        endfor                                                                  
        if empty(errors)                                                        
            % | " Couldn't detect gofmt error format, output errors             
        endif                                                                   
        undo                                                                    
        if !empty(errors)                                                       
            call setloclist(0, errors, 'r')                                     
        endif                                                                   
        echohl Error | echomsg "Gofmt returned error" | echohl None             
    endif                                                                       
    call winrestview(view)                                                      
endfunction                                                                     
                                                                                
autocmd FileType go autocmd BufWritePre <buffer> Fmt  