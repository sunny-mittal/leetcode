/*Given an array of size n, find the majority element. The majority element is the element that appears more than ⌊ n/2 ⌋ times.

You may assume that the array is non-empty and the majority element always exist in the array.*/

majority-element = (nums) ->
  min-count = nums.length / 2
  counts = {}
  for num in nums
    if counts[num] then counts[num]++ else counts[num] = 1
    return num if counts[num] > min-count
