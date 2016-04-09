majority-element = (nums) ->
  min-count = nums.length / 2
  counts = {}
  for num in nums
    if counts[num] then counts[num]++ else counts[num] = 1
    return num if counts[num] > min-count
