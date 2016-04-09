class ListNode
  (@val) ->

one = new ListNode 1
two = new ListNode 2
three = new ListNode 3
four = new ListNode 4

one.next = two
two.next = three
three.next = four

to-string = (head) ->
  res = ''
  while head
    res += "#{head.val},"
    head = head.next
  res.slice 0 -1

reverse-list = (head) ->
  return head if not (head instanceof ListNode)
  next = head.next
  head.next = void
  while next
    next-next = next.next
    next.next = head
    head = next
    next = next-next
  head
