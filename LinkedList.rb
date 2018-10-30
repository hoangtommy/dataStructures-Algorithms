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
  	current_node = @head
  	node_number = 0
  	until node_number >= index
  	  break current_node.value if index === node_number
  	  node_number += 1
  	  current_node = current_node.next_node 
  	end
  	return current_node.value
  end

  def pop
  	@tail.value = nil
  end

  def contains?(value)
  	current_node = @head
  	until current_node.nil?
  	  return true if current_node.value === value
  	  current_node = current_node.next_node
  	end
  	return false
  end

  def find(data)
  	current_node = @head
  	index = 0
  	until current_node.nil?
  	  return index if current_node.value === data
  	  index += 1
  	  current_node = current_node.next_node
  	end
  	return nil
  end

  def to_s
  	current_node = @head
  	# create a string that we'll display
  	string = ''
  	# iterate through the node list and add the values to the stirng, include -> and stuff
    until current_node.nil?
      string += " (#{current_node.value}) ->"
      current_node = current_node.next_node
    end
  	puts string += ' nil'
  end
end

l = LinkedList.new('First')
l.append('second')
l.append('third')
l.prepend('zero')
p l.to_s
