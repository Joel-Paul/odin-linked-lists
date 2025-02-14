
class LinkedList
  attr_reader :head, :tail, :size

  def initialize
    @head = nil
    @tail = nil
    @size = 0
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
    @size += 1
  end

  def prepend(value)
    node = Node.new(value, @head)
    @head = node

    @size += 1
  end

  def at(index)
    node = @head
    for _ in 0...index
      node = node.next_node
    end
    node
  end

  def pop
    new_tail = @head
    old_tail = @tail

    if new_tail == old_tail
      @head = nil
    else
      until new_tail.next_node == old_tail
        new_tail = new_tail.next_node
      end
    end

    new_tail.next_node = nil
    @tail = new_tail
    @size -= 1
    old_tail.value
  end

  def contains?(value)
    node = @head
    until node.nil?
      return true if node.value == value
      node = node.next_node
    end
    false
  end
end

class Node
  attr_accessor :value, :next_node

  def initialize(value=nil, next_node=nil)
    @value = value
    @next_node = next_node
  end
end
