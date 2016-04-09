/*Given a column title as appear in an Excel sheet, return its corresponding column number.

For example:

    A -> 1
    B -> 2
    C -> 3
    ...
    Z -> 26
    AA -> 27
    AB -> 28 */

title-to-number = (s) ->
  s.split '' .reverse!.reduce (acc, letter, pos) ->
    acc + (letter.code-point-at! % 64) * Math.pow 26, pos
  , 0
