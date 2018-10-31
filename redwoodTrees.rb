class Node
  attr_accessor :value, :parent, :children

  def initialize(value = nil, parent = nil, children = nil)
  	@value = value
  	@parent = parent
  	@children = children
  end

  def build_tree
  end

  def breadth_first_search; end

  def depth_first_search; end

  def dfs_rec; end
end