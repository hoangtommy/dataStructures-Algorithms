class BuildAndSearch
  def initialize(data)
    @root = data[0]
    build_tree(data)
  end

  private

  def build_tree(data)
    data.each do |value|
      node = make_node(value)
      set_node(node)
    end
  end

  def make_node(value)
    node = Node.new(value)
  end

  def set_node(node)
    if node.value < 
  end
end

class Node
  attr_accessor :value, :parent, :left_child, :right_child

  def initialize(value = nil, parent = nil, left_child = nil, right_child = nil)
  	@value = value
  	@parent = parent
  	@left_child = left_child
    @right_child = right_child
  end
end

# did not finish this data structure building project
