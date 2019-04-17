/*
merge possible at instruction 0x1E0
boolector solution: #b00101010
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