" Vim compiler file
" Compiler:	mosml
" Maintainer:	kizz
" Last Change:	2005 Oct 26

if exists("current_compiler")
  finish
endif
let current_compiler = "mosml"

if exists(":CompilerSet") != 2		" older Vim always used :setlocal
  command -nargs=* CompilerSet setlocal <args>
endif

CompilerSet makeprg=(echo\ quit\\(\\)\\;\\\|mosml\ -quietdec\ $*)

CompilerSet errorformat=
    \%-Z,
    \%EFile\ \"%f\"\\,\ line\ %l\\,\ characters\ %c-%.%#,
    \%-C!%*[\ \^],
    \%-C!\%*[\ ]%m,
    \%-G%.%#

