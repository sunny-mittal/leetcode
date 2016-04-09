/*Given an array of integers, find if the array contains any duplicates. Your function should return true if any value appears at least twice in the array, and it should return false if every element is distinct.*/

contains-duplicate = (nums) ->
  seen = {}
  for num in nums
    return true if seen[num]
    seen[num] = true
  false
