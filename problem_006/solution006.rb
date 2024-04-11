module DailyCodingProblem006
  class XORLinkedList
    Node = Struct.new(:value, :both)

    def initialize
      @nodes = {} # Simulates memory with a hash
      @head = nil
      @tail = nil
      @elements = 0 # Keep track of the number of elements to simulate pointers
    end

    def add(element)
      new_node = Node.new(element, 0)
      @nodes[@elements] = new_node
      if @head.nil?
        @head = @tail = @elements
      else
        @nodes[@tail].both ^= @elements
        new_node.both = @tail
        @tail = @elements
      end
      @elements += 1
    end

    def get(index)
      prev_addr = 0
      current_addr = @head
      next_addr = nil

      index.times do
        return nil if current_addr.nil?

        current_node = @nodes[current_addr]
        next_addr = prev_addr ^ current_node.both
        return nil if next_addr.nil? || !@nodes.key?(next_addr)

        prev_addr = current_addr
        current_addr = next_addr
      end

      @nodes[current_addr]&.value
    end
  end
end

# Testing the XORLinkedList within the DailyCodingProblem006 module
list = DailyCodingProblem006::XORLinkedList.new
list.add('a')
list.add('b')
list.add('c')

puts list.get(0) # Output: a
puts list.get(1) # Output: b
puts list.get(2) # Output: c
