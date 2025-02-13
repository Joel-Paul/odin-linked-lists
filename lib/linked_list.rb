
class LinkedList
  def initialize
    @head = nil
    @tail = nil
  end

  def append(value)
    node = Node.new value
    if @tail.nil?
      @head = node
      @tail = node
    else
      @tail.next_node = node
      @tail = node
    end
  end

  def prepend(value)
    node = Node.new(value, @head)
    @head = node
  end
end

class Node
  attr_accessor :value, :next_node

  def initialize(value=nil, next_node=nil)
    @value = value
    @next_node = next_node
  end
end
