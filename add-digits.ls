add-digits = (num) ->
  mod = num % 9
  if num < 10 then num else (if mod is 0 then 9 else mod)
