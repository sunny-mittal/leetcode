class TreeNode
  (@val) ->

/* Setup */
four = new TreeNode 4
two = new TreeNode 2
seven = new TreeNode 7
one = new TreeNode 1
three = new TreeNode 3
six = new TreeNode 6
nine = new TreeNode 9

four.left = two
four.right = seven
two.left = one
two.right = three
seven.left = six
seven.right = 9

swap = (a) ->
  tmp = a.right
  a.right = a.left
  a.left = tmp

invert-tree = (root) ->
  if root instanceof TreeNode
    swap root
    invert-tree root.left if root.left
    invert-tree root.right if root.right
  root
