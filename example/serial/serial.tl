let kSerial: u8* = 0xbfd003f8


def InitSerial() {
  kSerial[1] = 0x00 as u8 # disable all interrupts
  kSerial[3] = 0x80 as u8 # enable DLAB (set baud rate divisor)
  kSerial[0] = 0x03 as u8 # set divisor to 3 (lo byte) 38400 baud
  kSerial[1] = 0x00 as u8 #                  (hi byte)
  kSerial[3] = 0x03 as u8 # 8 bits, no parity, one stop bit
  kSerial[2] = 0xc7 as u8 # enable FIFO, clear them, with 14-byte threshold
  kSerial[4] = 0x0b as u8 # IRQs enabled, RTS/DSR set
}

def IsTransEmpty(): u32 {
  return kSerial[5] & 0x20
}

def WriteChar(c: u8) {
  while !IsTransEmpty() {}
  kSerial[0] = c
}

def WriteString(str: u8*) {
  while *str {
    WriteChar(*str)
    str += 1
  }
}


InitSerial()
WriteString("Hello world!\n")
while 1 {}
