" ctermfg = red, yellow, green, blue, magenta, cyan, white, black, gray
" cterm = bold, underline, reverse, italic, none

" highlight operators
" syntax match _Operator "[-+&|<>=!\/~.,;:*%&^?()\[\]{}]"
" syntax match _Operator "[-+&|<>=!\/~.,;:*%&^?]"
syntax match _Operator "[-+&|<>=!\/~;:*%&^?]"

syntax match _Var "[A-z][A-z0-9_]*"

syntax match _Brackets "[()\[\]{}]"

syntax match _Numbers "\.*[0-9]f*"

" highlight methods
"syntax match _Paren "?=(" contains=cParen,cCppParen
"syntax match _memberFunc "\.\s*\w\+\s*(\@=" contains=_Operator,_Paren

" colors
"hi _memberFunc guifg=#00FF00 guibg=NONE gui=none
hi _Operator guifg=#FF0000 guibg=NONE gui=none ctermfg=white
hi _Numbers ctermfg=green
hi _Self ctermfg=darkmagenta
hi _Brackets cterm=bold
hi _Brackets ctermfg=cyan
hi _Var ctermfg=cyan

" to resolve conflict with comment markers
syntax region _Comment start="\'\'\'" end="\'\'\'" contains=@Spell
syntax match _Comment "\/\/.*$" contains=@Spell
hi link _Comment Comment

