/*Given an array nums, write a function to move all 0's to the end of it while maintaining the relative order of the non-zero elements.

For example, given nums = [0, 1, 0, 3, 12], after calling your function, nums should be [1, 3, 12, 0, 0].

Note:
You must do this in-place without making a copy of the array.
Minimize the total number of operations.*/

move-zeroes = (nums) ->
  return if nums.length is 0 or nums.length is 1
  ptr = 1
  for i from 0 to nums.length
    if nums[i] is 0
      while nums[ptr] is 0
        ptr++
      break if ptr >= nums.length
      nums[i] = nums[ptr]
      nums[ptr] = 0
    ptr++
