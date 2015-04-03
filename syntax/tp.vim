" Vim syntax file
" Language: FANUC TP
" Author:   Jay Strybis <jay.strybis@gmail.com>
" URL:      http://github.com/onerobotics/vim-tp
" License:  MIT

if exists("b:current_syntax")
  finish
endif

if version < 600
  syntax clear
endif


" Sysvars
syn match       tpSysvar            /\.\?\$[a-zA-Z0-9.]\+/	
hi def link     tpSysvar            Identifier

" Identifiers
syn match       tpIdentifier        /[a-zA-Z0-9]\+/
hi def link     tpIdentifier        Identifier

" Conditional
syn keyword     tpConditional       IF ELSE SELECT FOR TO DOWNTO ENDFOR
hi def link     tpConditional       Conditional

" Constants
syn keyword     tpBoolean           ON OFF TRUE FALSE ENABLE DISABLE
syn keyword     tpConstant          max_speed
hi def link     tpBoolean           Boolean
hi def link     tpConstant          Constant

" Units
syn match       tpUnits             /sec/
syn match       tpUnits             /msec/
syn match       tpUnits             /%/
syn match       tpUnits             /mm/
syn match       tpUnits             /deg/
syn match       tpUnits             /mm\/sec/
syn match       tpUnits             /cm\/min/
syn match       tpUnits             /deg\/sec/
hi def link     tpUnits             Special

" Modifiers
syn match       tpModifier          /ACC/
syn match       tpModifier          /Skip/
syn keyword     tpModifier          DA DB INC Offset PTH TA TB Tool_Offset VOffset
hi def link     tpModifier          Function

" String Functions
syn keyword     tpStringFunction    FINDSTR STRLEN SUBSTR
hi def link     tpStringFunction    Function

" Data
syn region      tpData              start="AI\[" end="\]"     contains=tpInteger,tpItemComment
syn region      tpData              start="AO\[" end="\]"     contains=tpInteger,tpItemComment
syn region      tpData              start="DI\[" end="\]"     contains=tpInteger,tpItemComment
syn region      tpData              start="DO\[" end="\]"     contains=tpInteger,tpItemComment
syn region      tpData              start="F\[" end="\]"      contains=tpInteger,tpItemComment
syn region      tpData              start="GI\[" end="\]"     contains=tpInteger,tpItemComment
syn region      tpData              start="GO\[" end="\]"     contains=tpInteger,tpItemComment
syn region      tpData              start="P\[" end="\]"      contains=tpInteger,tpItemComment,tpString
syn region      tpData              start="PR\[" end="\]"     contains=tpInteger,tpItemComment
syn region      tpData              start="AR\[" end="\]"     contains=tpInteger,tpItemComment
syn region      tpData              start="R\[" end="\]"      contains=tpInteger,tpItemComment
syn region      tpData              start="RI\[" end="\]"     contains=tpInteger,tpItemComment
syn region      tpData              start="RO\[" end="\]"     contains=tpInteger,tpItemComment
syn region      tpData              start="RSR\[" end="\]"    contains=tpInteger,tpItemComment
syn region      tpData              start="SI\[" end="\]"     contains=tpInteger,tpItemComment
syn region      tpData              start="SO\[" end="\]"     contains=tpInteger,tpItemComment
syn region      tpData              start="SR\[" end="\]"     contains=tpInteger,tpItemComment
syn region      tpData              start="UI\[" end="\]"     contains=tpInteger,tpItemComment
syn region      tpData              start="UO\[" end="\]"     contains=tpInteger,tpItemComment
syn region      tpData              start="VR\[" end="\]"     contains=tpInteger,tpItemComment
syn region      tpData              start="RESUME_PROG\[" end="\]"     contains=tpInteger,tpItemComment
syn region      tpData              start="TIMER\[" end="\]"  contains=tpInteger,tpItemComment
syn region      tpData              start="TIMER_OVERFLOW\[" end="\]"  contains=tpInteger,tpItemComment
syn region      tpData              start="UALM\[" end="\]"   contains=tpInteger,tpItemComment
syn region      tpData              start="UFRAME\[" end="\]" contains=tpInteger,tpItemComment
syn region      tpData              start="UTOOL\[" end="\]"  contains=tpInteger,tpItemComment
syn keyword     tpData              ERROR_PROG UFRAME_NUM UTOOL_NUM WAIT Offset Tool_Offset VOFFSET FOUND_POS
hi def link     tpData              Type

" Item comment
syn match       tpItemComment       /:[a-zA-Z0-9 ]\+/ contained
hi def link     tpItemComment       Function

" Line numbers
syn match       tpLineNumber        /^ \+:/
syn match       tpLineNumber        /^ \+\d\+:/
hi def link     tpLineNumber        Comment

" Strings
syn region      tpString            start="'" end="'"
syn region      tpString            start='"' end='"'
hi def link     tpString            String

" Labels
syn region      tpLabel             start="LBL\[" end="\]" contains=tpData,tpInteger,tpItemComment
hi def link     tpLabel             Label

" Numbers
syn match       tpInteger           /[\-]\?\d\+/
syn match       tpFloat             /[\-]\?\d\+\.\d\+/
syn match       tpFloat             /\.\?\d\+/
hi def link     tpInteger           Number
hi def link     tpFloat             Float

" Motion
syn match       tpMotion            /\(C\|J\|L\)\( P\)\@=/
hi def link     tpMotion            Special

" Operators
syn match       tpOperator          /+/
syn match       tpOperator          /-/
syn match       tpOperator          /*/
syn match       tpOperator          /\//
syn match       tpOperator          /=/
syn match       tpOperator          />/
syn match       tpOperator          /</
syn match       tpOperator          />=/
syn match       tpOperator          /<=/
syn keyword     tpOperator          AND DIV MOD OR
hi def link     tpOperator          Operator

" Keywords
syn match       tpKeyword           /\/PROG/
syn match       tpKeyword           /\/ATTR/
syn match       tpKeyword           /\/APPL/
syn match       tpKeyword           /\/MN/
syn match       tpKeyword           /\/POS/
syn match       tpKeyword           /\/END/
syn match       tpKeyword           /COL GUARD ADJUST/
syn match       tpKeyword           /\(LOCK\|UNLOCK\) \(PREG\|VREG\)/
syn match       tpKeyword           /\(OFFSET\|TOOL_OFFSET\|VOFFSET\) CONDITION/
syn match       tpKeyword           /SKIP CONDITION/
syn keyword     tpKeyword           ABORT CALL CNT END FINE JMP JPOS LPOS MONITOR OVERRIDE PAUSE PAYLOAD POINT_LOGIC PULSE RESET RUN START STOP STOP_TRACKING TIMEOUT 
syn match       tpKeyword           /AP_LD/	
syn match       tpKeyword           /CNT/
syn match       tpKeyword           /RT_LD/
hi def link     tpKeyword           Keyword

" Comments

syn match       tpComment           /\(\s*\d*:\s*\)\@<=!.*/	contains=@spell
syn match       tpComment           /\(\s*\d*:\s*\)\@<=--eg:.*/	contains=@spell
syn match       tpRemark            /\(\s*\d*:\s*\)\@<=\/\/.*/
hi def link     tpComment           Comment
hi def link     tpRemark            Comment

" Header stuff
syn keyword     tpHeader            OWNER ASCBIN MNEDITOR COMMENT PROG_SIZE CREATE DATE TIME MODIFIED FILE_NAME VERSION LINE_COUNT MEMORY_SIZE PROTECT READ_WRITE TCD STACK_SIZE TASK_PRIORITY TIME_SLICE BUSY_LAMP_OFF ABORT_REQUEST PAUSE_REQUEST DEFAULT_GROUP CONTROL_CODE
hi def link     tpHeader            Define

let b:current_syntax = "tp"
