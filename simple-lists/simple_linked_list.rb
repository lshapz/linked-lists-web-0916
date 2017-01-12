class Node

  attr_accessor :data, :next

  def initialize(data, next_node = nil)
    @data = data
    @next = next_node
  end


end

class LinkedList

  attr_accessor :head

  def initialize(data)
    @head = Node.new(data)
  end

  def index_at(index)
    pointer = head
      index.times do 
        return nil unless pointer.next
        pointer = pointer.next
      end
    pointer.data
  end

  def insert_at_index(index, data)
    pointer = head
    (1..index-1).each do |num|
      if pointer.next.nil? && (index != num)
        pointer.next = Node.new(nil, nil)
      end
      pointer = pointer.next
    end
    if pointer
      old_next = pointer.next 
      pointer.next = Node.new(data, old_next) 
    end
  end

  def unshift(data)
    pointer = head
    self.head = Node.new(data)
    self.head.next = pointer
  end

  def push(data)
    pointer = head
      while pointer.next
        pointer = pointer.next
      end
      pointer.next = Node.new(data, nil)
  end

  # def reverse
  #   pointer = head
  #   foo = pointer.next 
  #   pointer.next = nil 

  #   while pointer.next
  #     foo = pointer
  #     pointer = pointer.next 


  # end


end