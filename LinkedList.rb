class Node
  attr_accessor :value, :next_node

  def initialize(value = nil, next_node = nil)
    @value = value
    @next_node = next_node
  end

end

class LinkedList

  def initialize(value)
  	@head = Node.new(value)
  	@tail = @head
  end

  def append(value)
  	new_node = Node.new(value)
  	@tail.next_node = new_node
  	@tail = new_node
  end

  def prepend(value)
  	new_node = Node.new(value)
  	new_node.next_node = @head
  	@head = new_node
  end

  def size
  	total_nodes = 1
  	tail_end = @head
  	until tail_end.next_node.nil?
  	  total_nodes += 1
  	  tail_end = tail_end.next_node
  	end
  	return total_nodes
  end

  def head
  	@head.value
  end

  def tail
  	@tail.value
  end

  def at(index)
  	puts 'error, list does not have that index' if self.size < index
  	# create a counter to iterate through the nodes values
  	# return the value at the index
  	current_node = @head
  	node_number = 0
  	until node_number >= index
  	  break current_node.value if index === node_number
  	  node_number += 1
  	  current_node = current_node.next_node 
  	end
  	current_node.value
  end

end

l = LinkedList.new('First')
l.append('second')
l.append('third')
l.prepend('zero')
p l.at(1)

