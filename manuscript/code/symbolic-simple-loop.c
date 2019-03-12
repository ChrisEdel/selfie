/* The purpose of this code is to demonstrate the capabilities
   of the monster symbolic execution engine of selfie regarding
   a simple loop. Monster translates the code to an SMT-LIB 
   formula that is satisfiable if and only if the code exits 
   with a non-zero exit code. 

   This code exits with 1 if the user input is '*' (decimal value 42)
   and exits with 0 otherwise.

   SMT-Solver finds the solution 42 (binary number 00101010).
   (command: './selfie -c manuscript/code/symbolic-simple-loop.c -n 200')
*/

uint64_t main() {
  uint64_t* x;
  uint64_t  a;

  x = malloc(8);
  a = 0;

  read(1, x, 1);

  while(*x < 50) {
    a = a + 1;
    *x = *x + 1;
  }

  if (a == 8)
    return 1;
  else
    return 0;
}