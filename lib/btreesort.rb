class Node
  attr_accessor :value
  attr_accessor :l, :r

  def initialize(value, l=nil, r=nil)
    @value = value
  end

  def insert(node, value)
    if node.value > value
      node.l ? insert(node.l, value) : node.l = Node.new(value)
    elsif node.value < value
      node.r ? insert(node.r, value) : node.r = Node.new(value)
    end
  end
end

module BTreeSort
  @sorted_array = []

  def self.sort(array)
    binary_tree = build_tree(array)
    flatten_tree(binary_tree)
    @sorted_array
  end

  def self.build_tree(array)
    tree = Node.new(array[0])
    rest = array.last(array.length-1)
    rest.each {|num|tree.insert(tree, num)}
    tree
  end

  def self.flatten_tree(tree)
    flatten_tree(tree.l) if tree.l
    @sorted_array.push(tree.value)
    flatten_tree(tree.r) if tree.r
  end
end

array = [7, 4, 9, 1, 6, 14, 10]
BTreeSort.sort(array) #=> returns [1, 4, 6, 7, 9, 10, 14]
