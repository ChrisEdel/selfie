/* The purpose of this code is to demonstrate the capabilities
   of the monster symbolic execution engine of selfie regarding
   a simple nested loop. Monster translates the code to an SMT-LIB 
   formula that is satisfiable if and only if the code exits 
   with a non-zero exit code. 

   SMT-Solver finds the solutions (0, 3), (1, 2), (2, 1),  (3, 0).
   (command: ./selfie -c manuscript/code/symbolic-nested-loop.c -n 200)
*/

uint64_t main() {
  uint64_t* x;
  uint64_t* y;
  uint64_t  a;

  x = malloc(8);
  y = malloc(8);
  a = 0;

  read(1, x, 1);
  read(1, y, 1);

  while(*x < 5) {
    while(*y < 5) {
      a = a + 1;
      *y = *y + 1;
    }
    a = a + 1;
    *x = *x + 1;
  }

  if (a == 7)
    return 1;
  else
    return 0;
}