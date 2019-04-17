/*
merge possible at instruction 0x214, 0x230
boolector solution: #b00101000
                    #b00110010
                    #b00110100
*/

uint64_t main() {
  uint64_t* x;
  uint64_t  a;

  x = malloc(8);


  read(1, x, 1);
  
  a = 0;

  if(*x > 42) {
    *x = *x - 1;
    if(*x > 50)
      *x = *x - 1;
    else {
        *x = *x + 1;
    }
  }
  else
    *x = *x + 10;

  if(*x == 50)
    return 1;
  else
    return 0;

}