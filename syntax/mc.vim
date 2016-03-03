" Vim syntax file
" Language: Meta-Casanova
" Maintainer: Louis van der Burg
" Latest Revision: 3 march 2016

if exists("b:current_syntax")
  finish
endif

" Keywords
syn keyword mcBasicKeywords Data Func ArrowFunc TypeFunc TypeAlias Module
syn keyword mcPreProcs inherit import builtin

" specal char
syn match mcBar '--\+'
" arrows
syn match mcPriorityArrow '#>\( \d\+\)\=\( [RL]\)\='
syn match mcTypeArrow '->'
syn match mcKindArrow '=>'
syn match mcParentheses '[()]'

" type variables
syn match mcTypeVariables "'\w\+"

" Regions
syn region mcComment start="\$\*" end="\*\$"
syn region mcComment start="\$\$" end="\n"
syn region mcString start='"' end='"'

" Integer with - + or nothing in front
syn match mcNumber '\([-+]\)\=\d\+'
" Floating point number with decimal no E or e
syn match mcNumber '[-+]\d\+\.\d*'

" member access operator
syn match mcMemAccOperator '\w^\w'

let b:current_syntax = "mc"

hi def link mcComment        Comment
hi def link mcBasicKeywords  Keyword
hi def link mcPreProcs       PreProc
hi def link mcString         Constant
hi def link mcNumber         Constant
hi def link mcBar            Special
hi def link mcPriorityArrow  Special
hi def link mcMemAccOperator Special
hi def link mcKindArrow      Type
hi def link mcTypeArrow      Type
hi def link mcParentheses    Type
hi def link mcTypeVariables  Identifier
