class ListNode
  (@val) ->

one = new ListNode 1
two = new ListNode 2
three = new ListNode 3
four = new ListNode 4

one.next = two
two.next = three
three.next = four

print-list = (head) ->
  res = ''
  while head
    res += "#{head.val},"
    head = head.next
  res.slice 0 -1

delete-node = (node) ->
  node.val = node.next.val
  node.next = node.next.next
