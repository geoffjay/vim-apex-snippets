""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Apex syntax file
" Language:  apex
" Maintainer:  Geoff Johnson <geoff.jay@gmail.com>
" Last Change:  2019 Feb 14

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if exists("b:current_syntax")
  finish
endif

" Read the C syntax to start with
runtime! syntax/c.vim
unlet b:current_syntax

" Now setup the apex specific stuff

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" Apex Fundamentals

" Limit of Basic Types
syn match aDefine 'APEX_[A-Z]*'

" Miscellaneous Macros
"syn keyword  aDefine APEX_...


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Define the default highlighting.
command -nargs=+ HiLink hi def link <args>

HiLink aType         Type
HiLink aStructure    Structure
HiLink aEnum         Structure
HiLink aUnion        Structure
HiLink aConstant     Constant
HiLink aEnumConstant Constant
HiLink aDefine       Macro

delcommand HiLink

let b:current_syntax = "glib"

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
