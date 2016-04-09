contains-duplicate = (nums) ->
  seen = {}
  for num in nums
    return true if seen[num]
    seen[num] = true
  false
