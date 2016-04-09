/*You are climbing a stair case. It takes n steps to reach to the top.

Each time you can either climb 1 or 2 steps. In how many distinct ways can you climb to the top?*/

modified_fibonacci = (n) ->
  return 1 if n is 0 or n is 1
  p = q = 1
  for i from 1 to n
    tmp = q
    q += p
    p = tmp
  p

climb-stairs = (n) ->
  modified_fibonacci n
