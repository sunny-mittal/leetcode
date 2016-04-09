is-anagram = (s, t) ->
  s = s.split '' .sort!.join ''
  t = t.split '' .sort!.join ''
  s is t
