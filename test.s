// UEFIテストプログラム

// コンパイル：
// java -jar asm_x64.jar -efi test.s test.EFI


_start:
  push rbp
  rbp=rsp
  0x10(rbp)=rcx
  0x18(rbp)=rdx
  
  rax=0x18(rbp)
  rax=0x40(rax)
  rax=0x30(rax)
  rdx=0x18(rbp)
  rdx=0x40(rdx)
  rcx=rdx
  call (rax)
  rax=0x18(rbp)
  rax=0x40(rax)
  rax=0x08(rax)
  rdx=0x18(rbp)
  rcx=0x40(rdx)
  rdx=hello
  call (rax)
loop:
  jmp loop


  align 8
hello:
  short 'h'
  short 'e'
  short 'l'
  short 'l'
  short 'o'
  short 10
  short 0
