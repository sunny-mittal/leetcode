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
