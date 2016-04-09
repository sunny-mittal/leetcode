/*Write a function to delete a node (except the tail) in a singly linked list, given only access to that node.

Supposed the linked list is 1 -> 2 -> 3 -> 4 and you are given the third node with value 3, the linked list should become 1 -> 2 -> 4 after calling your function.*/

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

delete-node = (node) ->
  node.val = node.next.val
  node.next = node.next.next
