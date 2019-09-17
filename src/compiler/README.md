# TinyLang

TinyLang is a tiny programming language designed for compiler principle course design, with a compiler that can compile source code to TinyMIPS architecture.

## EBNF

```ebnf
program   ::= {stmt};
stmt      ::= assign  | var_def | let_def | fun_def | fun_call
              if      | while   | control;

assign    ::= id assign_op expr;
var_def   ::= "var" id ":" type ["=" expr];
let_def   ::= "let" id ":" type "=" expr;
fun_def   ::= "def" id "(" [arg_def] ")" [":" type] block;
fun_call  ::= id "(" [expr {"," expr}] ")";
if        ::= "if" expr block ["else" (if | block)];
while     ::= "while" expr block;
control   ::= "break" | "continue" | ("return" [expr]);

assign_op ::= "="   | "+="    | "-="  | "*="  | "/="  | "%="
              "&="  | "|="    | "^="  | "<<=" | ">>=";
type      ::= "i32" | "i32*"  | "i8"  | "i8*";
arg_def   ::= id ":" type {"," id ":" type};
block     ::= "{" program "}";

expr      ::= cast {bin_op cast};
cast      ::= unary ["as" type];
unary     ::= [unary_op] factor;
bin_op    ::= "+"   | "-"   | "*"   | "/"   | "%"   | "&"
            | "|"   | "^"   | "&&"  | "||"  | "<<"  | ">>"
            | "<"   | "<="  | ">"   | ">="  | "=="  | "!=";
unary_op  ::= "+"   | "-"   | "!"   | "~"   | "*"   | "&";
factor    ::= value | fun_call | index | "(" expr ")";
index     ::= expr "[" expr "]";

value     ::= ID_VAL | NUM_VAL | CHAR_VAL | STR_VAL | array;
array     ::= "{" expr {"," expr} [","] "}";
```
