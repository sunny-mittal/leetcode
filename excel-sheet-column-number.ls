title-to-number = (s) ->
  s.split '' .reverse!.reduce (acc, letter, pos) ->
    acc + (letter.code-point-at! % 64) * Math.pow 26, pos
  , 0
