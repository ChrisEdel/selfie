#!/bin/sh
rm manuscript/code/symbolic/*.t
./selfie -c manuscript/code/symbolic/simple-if-without-else.c -n 0 > /dev/null
echo "monster finished simple-if-without-else"
./selfie -c manuscript/code/symbolic/simple-if-else.c -n 0 -n 0 > /dev/null
echo "monster finished simple-if-else"
./selfie -c manuscript/code/symbolic/simple-if-else-reverse.c -n 0 > /dev/null
echo "monster finished simple-if-else-reverse"
./selfie -c manuscript/code/symbolic/nested-if-else.c -n 0 > /dev/null
echo "monster finished nested-if-else"
./selfie -c manuscript/code/symbolic/nested-if-else-reverse.c -n 0 > /dev/null
echo "monster finished nested-if-else-reverse"
./selfie -c manuscript/code/symbolic/simple-loop.c -n 0 > /dev/null
echo "monster finished simple-loop"
./selfie -c manuscript/code/symbolic/simple-reducing-loop.c -n 0 > /dev/null
echo "monster finished simple-reducing-loop"
./selfie -c manuscript/code/symbolic/nested-loop.c -n 500 > /dev/null
echo "monster finished nested-loop"
./selfie -c manuscript/code/symbolic/nested-nested-loop.c -n 500 > /dev/null
echo "monster finished nested-nested-loop"
./selfie -c manuscript/code/symbolic/recursive-fibonacci.c -n 200 > /dev/null
echo "monster finished recursive-fibonacci"
./selfie -c manuscript/code/symbolic/recursive-factorial.c -n 1000 > /dev/null
echo "monster finished recursive-factorial"
./selfie -c manuscript/code/symbolic/recursive-nested.c -n 1000 > /dev/null
echo "monster finished recursive-nested"
./selfie -c manuscript/code/symbolic/simple-assignment.c -n 0 > /dev/null
echo "monster finished simple-assignment"

echo "monster finished all examples"

cp manuscript/code/symbolic/*.t /Users/chris/Documents/boolector/build/bin/
cd /Users/chris/Documents/boolector/build/bin/

rm *.txt
./boolector simple-if-without-else.t > simple-if-without-else.txt
echo "boolector finished simple-if-without-else"
./boolector simple-if-else.t > simple-if-else.txt
echo "boolector finished simple-if-else"
./boolector simple-if-else-reverse.t > simple-if-else-reverse.txt
echo "boolector finished simple-if-else-reverse"
./boolector nested-if-else.t > nested-if-else.txt
echo "boolector finished nested-if-else"
./boolector nested-if-else-reverse.t > nested-if-else-reverse.txt
echo "boolector finished nested-if-else-reverse"
./boolector simple-loop.t > simple-loop.txt
echo "boolector finished simple-loop"
./boolector simple-reducing-loop.t > simple-reducing-loop.txt
echo "boolector finished simple-reducing-loop"
./boolector nested-loop.t > nested-loop.txt
echo "boolector finished nested-loop"
./boolector nested-nested-loop.t > nested-nested-loop.txt
echo "boolector finished nested-nested-loop"
./boolector recursive-fibonacci.t > recursive-fibonacci.txt
echo "boolector finished recursive-fibonacci"
./boolector recursive-factorial.t > recursive-factorial.txt
echo "boolector finished recursive-factorial"
./boolector recursive-nested.t > recursive-nested.txt
echo "boolector finished recursive-nested"
./boolector simple-assignment.t > simple-assignment.txt
echo "boolector finished simple-assignment"
rm *.t

echo "boolector finished all examples"