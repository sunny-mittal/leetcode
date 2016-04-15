/*Given a string array words, find the maximum value of length(word[i]) * length(word[j]) where the two words do not share common letters. You may assume that each word will contain only lower case letters. If no such two words exist, return 0.

Example 1:
Given ["abcw", "baz", "foo", "bar", "xtfn", "abcdef"]
Return 16
The two words can be "abcw", "xtfn".

Example 2:
Given ["a", "ab", "abc", "d", "cd", "bcd", "abcd"]
Return 4
The two words can be "ab", "cd".

Example 3:
Given ["a", "aa", "aaa", "aaaa"]
Return 0
No such pair of words.*/

max-product = (words) ->
  coll = make-collection words
  find-max coll

make-collection = (words) ->
  words.reduce (coll, word, i) ->
    arr = coll[word] = []
    seen = {}
    word.split('').for-each (l) -> seen[l] = true
    for j from i + 1 to words.length - 1
      cur-word = words[j]
      for k from 0 to cur-word.length - 1
        break if seen[cur-word[k]]
        arr.push(cur-word) if k is cur-word.length - 1
    coll
  , {}

find-max = (coll) ->
  res = 0
  for k, v of coll
    len = k.length
    res = Math.max(res, len * v.reduce (acc, word) ->
      Math.max acc, word.length
    , 0)
  res

console.log max-product ['qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqq' 'wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww' 'eeeeeeeeeeeeeeeeeeeeeeeeeeee' 'rrrrrrrrrrrrrrrrrrrrrrrrrrr' 'tttttttttttttttt']
