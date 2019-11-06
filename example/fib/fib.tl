# function declarations
def readInt(): i32
def printInt(i: i32)

def fib(n: i32): i32 {
  if n <= 2 {
    return 1
  }
  else {
    return fib(n - 1) + fib(n - 2)
  }
}

var n = readInt(), ans = fib(n)
printInt(ans)
