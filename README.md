# BTreeSort

## Goal

Sort an array using a binary tree

## The Approach

1. Create insert method for nodes. Traverse tree left if less than or right if greater than. Insert new node if no node is present there.
2. Build tree by inserting each element in array into new tree
3. Flatten tree by: 
  1. Traverse to bottom of leftmost branch, push lowest value into new array.
  2. Return up one level and push current node.
  3. If right branch present traverse 1 level down and repeat from step 1.
