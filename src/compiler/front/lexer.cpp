#include "front/lexer.h"

#include <iostream>
#include <cstdlib>
#include <cctype>

#include "util/style.h"

using namespace tinylang::front;

namespace {

enum class NumberType {
  Normal, Hex, Bin,
};

const char *keywords[] = {
  "var", "let", "def", "as",
  "i32", "i8", "ui32", "ui8",
  "if", "else", "while",
  "break", "continue", "return",
};

const char *operators[] = {
  "+", "-", "*", "/", "%",
  "==", "!=", "<", "<=", ">", ">=",
  "&&", "||", "!",
  "&", "|", "~", "^", "<<", ">>",
  "=", "+=", "-=", "*=", "/=", "%=",
  "&=", "|=", "^=", "<<=", ">>=",
};

// get index of a string in string array
template <typename T, std::size_t N>
int GetIndex(const char *str, T (&str_array)[N]) {
  for (int i = 0; i < N; ++i) {
    if (!strcmp(str, str_array[i])) return i;
  }
  return -1;
}

bool IsOperatorHeadChar(char c) {
  const char op_head_chars[] = "+-*/%=!<>&|~^";
  for (const auto &i : op_head_chars) {
    if (i == c) return true;
  }
  return false;
}

bool IsOperatorChar(char c) {
  const char op_chars[] = "=&|<>";
  for (const auto &i : op_chars) {
    if (i == c) return true;
  }
  return false;
}

}  // namespace

Token Lexer::PrintError(const char *message) {
  using namespace tinylang::util;
  // print error message
  std::cerr << style("B") << "lexer";
  std::cerr << " (line " << line_pos_ << "): " << style("RBr") << "error";
  std::cerr << ": " << message << std::endl;
  // increase error count
  ++error_num_;
  return Token::Error;
}

int Lexer::ReadEscape() {
  // eat '\' char
  NextChar();
  if (IsEOL()) return -1;
  switch (last_char_) {
    case 'a': return '\a';
    case 'b': return '\b';
    case 'f': return '\f';
    case 'n': return '\n';
    case 'r': return '\r';
    case 't': return '\t';
    case 'v': return '\v';
    case '\\': return '\\';
    case '\'': return '\'';
    case '"': return '"';
    case '0': return '\0';
    case 'x': {
      char hex[3] = {0};
      char *end_pos;
      // read 2 hex digits
      for (int i = 0; i < 2; ++i) {
        NextChar();
        if (IsEOL()) return -1;
        hex[i] = last_char_;
      }
      // convert to character
      auto ret = std::strtol(hex, &end_pos, 16);
      return *end_pos ? -1 : ret;
    }
    default: return -1;
  }
}

Token Lexer::HandleId() {
  // read string
  std::string id;
  do {
    id += last_char_;
    NextChar();
  } while (!IsEOL() && (std::isalnum(last_char_) || last_char_ == '_'));
  // check if string is keyword
  int index = GetIndex(id.c_str(), keywords);
  if (index < 0) {
    id_val_ = id;
    return Token::Id;
  }
  else {
    key_val_ = static_cast<Keyword>(index);
    return Token::Keyword;
  }
}

Token Lexer::HandleNum() {
  std::string num;
  auto num_type = NumberType::Normal;
  // check if is hexadecimal/binary/floating-point number
  if (last_char_ == '0') {
    NextChar();
    switch (last_char_) {
      // hexadecimal
      case 'x': case 'X': num_type = NumberType::Hex; break;
      // binary
      case 'b': case 'B': num_type = NumberType::Bin; break;
      default: {
        if (IsEOL() || !std::isdigit(last_char_)) {
          // just zero
          num_val_ = 0;
          return Token::Num;
        }
        else {
          return PrintError("invalid number");
        }
        break;
      }
    }
    NextChar();
  }
  // read number string
  while (!IsEOL() && std::isxdigit(last_char_)) {
    num += last_char_;
    NextChar();
  }
  // convert to number
  char *end_pos;
  switch (num_type) {
    case NumberType::Hex: {
      num_val_ = std::strtoul(num.c_str(), &end_pos, 16);
      break;
    }
    case NumberType::Bin: {
      num_val_ = std::strtoul(num.c_str(), &end_pos, 2);
      break;
    }
    case NumberType::Normal: {
      num_val_ = std::strtoul(num.c_str(), &end_pos, 10);
      break;
    }
    default:;
  }
  // check if conversion is valid
  return *end_pos ? PrintError("invalid number") : Token::Num;
}

Token Lexer::HandleString() {
  std::string str;
  // start with quotes
  NextChar();
  while (last_char_ != '"') {
    if (last_char_ == '\\') {
      // read escape char
      int ret = ReadEscape();
      if (ret < 0) return PrintError("invalid escape character");
      str += ret;
    }
    else {
      str += last_char_;
    }
    NextChar();
    if (IsEOL()) return PrintError("expected '\"'");
  }
  // eat right quotation mark
  NextChar();
  str_val_ = str;
  return Token::String;
}

Token Lexer::HandleChar() {
  // start with quotes
  NextChar();
  if (last_char_ == '\\') {
    // read escape char
    int ret = ReadEscape();
    if (ret < 0) return PrintError("invalid escape character");
    char_val_ = ret;
  }
  else {
    char_val_ = last_char_;
  }
  NextChar();
  // check & eat right quotation mark
  if (last_char_ != '\'') return PrintError("expected \"'\"");
  NextChar();
  return Token::Char;
}

Token Lexer::HandleOperator() {
  std::string op;
  do {
    op += last_char_;
    NextChar();
  } while (!IsEOL() && IsOperatorChar(last_char_));
  // check if operator is valid
  int index = GetIndex(op.c_str(), operators);
  if (index < 0) {
    return PrintError("unknown operator");
  }
  else {
    op_val_ = static_cast<Operator>(index);
    return Token::Operator;
  }
}

Token Lexer::HandleComment() {
  // eat '#'
  NextChar();
  while (!IsEOL()) NextChar();
  return NextToken();
}

Token Lexer::HandleEOL() {
  do {
    ++line_pos_;
    NextChar();
  } while (IsEOL() && !in_.eof());
  return NextToken();
}

Token Lexer::NextToken() {
  // end of file
  if (in_.eof()) return Token::End;
  // skip spaces
  while (!IsEOL() && std::isspace(last_char_)) NextChar();
  // skip comment
  if (last_char_ == '#') return HandleComment();
  // id or keyword
  if (std::isalpha(last_char_)) return HandleId();
  // number
  if (std::isdigit(last_char_)) return HandleNum();
  // string
  if (last_char_ == '"') return HandleString();
  // character
  if (last_char_ == '\'') return HandleChar();
  // operator
  if (IsOperatorHeadChar(last_char_)) return HandleOperator();
  // end of line
  if (IsEOL()) return HandleEOL();
  // other characters
  other_val_ = last_char_;
  NextChar();
  return Token::Other;
}
