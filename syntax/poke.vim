" Vim syntax file
" Language:	Poke
" Maintainer:	Ayose Cazorla <ayosec@gmail.com>
" Last Change:	2021 May 11

if exists("b:current_syntax")
  finish
endif

" Reserved words {{{1

syn keyword pokeKeyword as big break catch continue else for
syn keyword pokeKeyword fun if in isa lambda little method
syn keyword pokeKeyword pinned raise return struct try type
syn keyword pokeKeyword union unit until var where while

syn keyword pokeType any byte int offset string uint void

syn keyword pokeIntrinsic assert close flush get_endian get_ios 
syn keyword pokeIntrinsic get_time getenv ioflags iosize load open 
syn keyword pokeIntrinsic print printf rand set_endian set_ios sizeof
syn keyword pokeIntrinsic strace term_begin_class term_begin_hyperlink 
syn keyword pokeIntrinsic term_end_class term_end_hyperlink
syn keyword pokeIntrinsic term_get_bgcolor syn keyword pokeIntrinsic
syn keyword pokeIntrinsic term_get_color term_set_bgcolor term_set_color unmap

syn keyword pokeValue OFFSET SELF __FILE__ __LINE__ 

" Comments {{{1

syn region pokeComment start="\V/*" end="\V*/"
syn region pokeComment start="#!" end="!#"
syn region pokeComment start="//" end="$"

" Strings {{{1

syn region pokeString start='"' end='"'

" Constants

syn match pokeType "\<[A-Z]\w*\>"

syn match pokeConstant "\<[A-Z][A-Z0-9_]\+\>"

" Default highlighting {{{1

hi def link pokeComment   Comment
hi def link pokeConstant  Constant
hi def link pokeIntrinsic Function
hi def link pokeKeyword   Keyword
hi def link pokeString    String
hi def link pokeType      Type
hi def link pokeValue     Constant
