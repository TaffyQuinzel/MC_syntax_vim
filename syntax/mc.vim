" Vim syntax file
" Language: Meta-Casanova
" Maintainer: Louis van der Burg
" Latest Revision: 15 februari 2016

if exists("b:current_syntax")
  finish
endif

" Keywords
syn keyword mcBasicKeywords Data Func TypeFunc TypeAlias Module inherit import --

" Matches
" syn match syntaxElementMatch 'regexp' contains=syntaxElement1 nextgroup=syntaxElement2 skipwhite

" specal char
syn match mcBar '--\+'
" arrows
syn match mcArrow '->'
syn match mcArrow '=>'

" Regions
syn region mcComment start="\$\*" end="\*\$"
syn region mcComment start="\$\$" end="\n"
syn region mcString start='"' end='"'

" Integer with - + or nothing in front
syn match mcNumber '\d\+'
syn match mcNumber '[-+]\d\+'
" Floating point number with decimal no E or e
syn match mcNumber '[-+]\d\+\.\d*'

let b:current_syntax = "mc"

hi def link mcComment     Comment
hi def link mcBasicKeywords Keyword
hi def link mcString      Constant
hi def link mcNumber      Constant
hi def link mcBar      Special
hi def link mcArrow      Type

" " hi def link mcTodo        Todo
" " hi def link mcBlockCmd    Statement
" " hi def link mcHip         Type
" " hi def link mcDesc        PreProc
