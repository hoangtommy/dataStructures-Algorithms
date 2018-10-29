class Node
  attr_accessor :value, :next_node, :size

  def initialize(value = nil, next_node = nil)
    @value = value
    @next_node = next_node
  end

end

class LinkedList
  
  def initialize
  	@head = nil
  	@tail = nil
  end

  def append(value)
  	new_node = Node.new(value)
  	if @head.nil?
  	  @head = new_node
  	  @tail = new_node
  	else
  	  @head.next_node = new_node
  	  @tail = 
  	end
  end

  def prepend(value)
  	current_head = @head
  	@head.next_node = Node.new(value, current_head)
  end

end

l = LinkedList.new('StartHere')
l.prepend('newStart')
l.append('append')

