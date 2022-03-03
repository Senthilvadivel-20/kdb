/
Auth: Senthilvadivel S
Date: 07/02/2022

Challenge 4: This is good co-primen

Co-primes, while not being the most exciting thing in the world, are extremely useful for cryptography (among other things). Numbers are co-prime if they don't share any common factors above 1.

For example, 15 and 8 are not prime, but have factors of 3 5 and 2 4 respectively, and so are co-prime. 15 and 9 are not co-prime, since they share a factor of 3.

For your input number, what is the sum of the positive co-primes of that number which are less than that number?

For example, the coprimes of 15 are

1 2 4 7 8 11 13 14



If your input was 15, the answer would be 60.

input: 987820

\

n:987820

find_fac:find_fac:{[x] :((1+til x) where (x mod 1+til x)=0)} // Find factors for given number
fac:find_fac[n] //n = 987820 , fac = (1 2 4 5 10 20 49391 98782 197564 246955 493910 987820)

lis:1+til n // lis = 1 2 3 4 ...987820

x:1  // Initial number for while loop

while[x<(count fac)-1 ; lis:(lis) inter ((1+til n) where ((1+til n) mod fac[x])<>0) ; x+:1]

show sum lis