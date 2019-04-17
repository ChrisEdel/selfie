/*
merge possible at instruction 0x1F0
boolector solution: #b00001100
                    #b00000010
*/

uint64_t main() {
  uint64_t* x;
  uint64_t a;

  x = malloc(8);
  a = 40;

  read(1, x, 1);

  if(*x == 2)
    a = a + *x;
  else
    a = a + (*x - 10);

  if(a == 42)
    return 1;
  else
    return 0;
}