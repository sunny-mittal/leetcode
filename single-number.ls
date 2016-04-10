/*Given an array of integers, every element appears twice except for one. Find that single one.

Note:
Your algorithm should have a linear runtime complexity. Could you implement it without using extra memory?*/

single-number = (nums) ->
  counts = nums.reduce (acc, num) ->
    if acc[num] then acc[num]++ else acc[num] = 1
    return acc
  , {}
  for k, v of counts
    return parse-int(k) if v is 1
