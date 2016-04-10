count-bits = (num) ->
  res = [0 1 1]
  for n from 3 to num
    val = 0
    val++ if n % 2 is 1
    val += res[(n / 2) .>>. 0]
    res.push val
  res
