/*Given a sorted linked list, delete all duplicates such that each element appear only once.

For example,
Given 1->1->2, return 1->2.
Given 1->1->2->3->3, return 1->2->3.*/

class ListNode
  (@val) ->

one-a = new ListNode 1
one-b = new ListNode 1
two = new ListNode 2
three-a = new ListNode 3
three-b = new ListNode 3

one-a.next = one-b
one-b.next = two
two.next = three-a
three-a.next = three-b

delete-duplicates = (head) ->
  return head if not (head instanceof ListNode)
  copy = head
  while copy.next
    if copy.next.val is copy.val
      copy.next = copy.next.next
    else
      copy = copy.next
  head
