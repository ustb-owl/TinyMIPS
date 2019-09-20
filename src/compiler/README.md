# TinyLang

TinyLang is a tiny programming language designed for compiler principle course design, with a compiler that can compile source code to TinyMIPS architecture.

## EBNF

```ebnf
program   ::= {stmt};
stmt      ::= var_def | let_def | fun_decl  | fun_def
            | if      | while   | control   | expr;

var_def   ::= "var" var_elem {"," var_elem};
let_def   ::= "let" let_elem {"," let_elem};
fun_decl  ::= "def" id "(" [arg_def] ")" [":" type];
fun_def   ::= fun_decl block;
if        ::= "if" expr block ["else" (if | block)];
while     ::= "while" expr block;
control   ::= "break" | "continue" | ("return" [expr]);

var_elem  ::= id [":" type] ["=" expr]
let_elem  ::= id [":" type] "=" expr
type      ::= "i32" | "i8"  | "ui32"  | "ui8" | type "*" {"*"};
arg_def   ::= id ":" type {"," id ":" type};
block     ::= "{" program "}";

expr      ::= cast {bin_op cast};
cast      ::= unary ["as" type];
unary     ::= [unary_op] factor;
bin_op    ::= "+"   | "-"   | "*"   | "/"   | "%"   | "&"
            | "|"   | "^"   | "&&"  | "||"  | "<<"  | ">>"
            | "<"   | "<="  | ">"   | ">="  | "=="  | "!="
            | "="   | "+="  | "-="  | "*="  | "/="  | "%="
            | "&="  | "|="  | "^="  | "<<=" | ">>=";
unary_op  ::= "+"   | "-"   | "!"   | "~"   | "*"   | "&";
factor    ::= value | fun_call | index | "(" expr ")";
fun_call  ::= id "(" [expr {"," expr}] ")";
index     ::= id "[" expr "]";

value     ::= ID_VAL | NUM_VAL | CHAR_VAL | STR_VAL | array;
array     ::= "{" expr {"," expr} [","] "}";
```
