/*Given an array of numbers nums, in which exactly two elements appear only once and all the other elements appear exactly twice. Find the two elements that appear only once.

For example:

Given nums = [1, 2, 1, 3, 2, 5], return [3, 5].

Note:
The order of the result is not important. So in the above example, [5, 3] is also correct.
Your algorithm should run in linear runtime complexity. Could you implement it using only constant space complexity?*/

single-number = (nums) ->
  diff = nums.reduce (acc, num) -> acc .^. num
  mask = diff .&. ~(diff - 1)
  res = [0 0]
  nums.for-each (num) ->
    if (num .&. mask) is 0 then res[0] .^.= num else res[1] .^.= num
  res
