// RUN: %llvmgcc -emit-llvm -c -o %t1.bc %s
// RUN: %klee --posix-runtime --use-concrete-path %t1.bc >%t2.txt
// RUN: grep "strlen = 3" %t2.txt

#include <unistd.h>
#include <string.h>
#include <stdio.h>

int main(int argc, char** argv) {
  
  char* name = "abc";
  klee_make_symbolic(name, strlen(name)+1, "name");
  printf("strlen = %d\n", strlen(name)); 

  return 0;

}
