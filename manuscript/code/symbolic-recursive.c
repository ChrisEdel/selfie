/* The purpose of this code is to demonstrate the capabilities
   of the monster symbolic execution engine of selfie regarding
   a simple recursion. Monster translates the code to an SMT-LIB 
   formula that is satisfiable if and only if the code exits 
   with a non-zero exit code. 

   SMT-Solver finds the solution 4. The fourth fibonacci number
   is 3, so 4 is the correct solution.
   (command: ./selfie -c manuscript/code/symbolic-recursive.c -n 300)
*/

uint64_t main() {
  uint64_t* x;
  uint64_t  a;

  x = malloc(8);

  read(1, x, 1);

  a = fib(*x);

  if (a == 3)
    return 1;
  else
  	return 0;
}

uint64_t fib(uint64_t n) {  
  if(n <= 1)
    return n;
  else
    return fib(n - 1) + fib(n - 2);
}