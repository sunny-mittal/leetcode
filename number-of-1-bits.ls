/*Write a function that takes an unsigned integer and returns the number of ’1' bits it has (also known as the Hamming weight).

For example, the 32-bit integer ’11' has binary representation 00000000000000000000000000001011, so the function should return 3.*/

hamming-weight = (n) ->
  num-bits = Math.ceil(Math.log2 n) + 1
  count = 0
  for i from 1 to num-bits
    count++ if n .&. 1
    n = n .>>>. 1
  count
