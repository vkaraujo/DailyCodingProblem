module DailyCodingProblem003
  class Node
    attr_accessor :val, :left, :right

    def initialize(val, left = nil, right = nil)
      @val = val
      @left = left
      @right = right
    end
  end

  def self.serialize(root)
    return 'None,' unless root

    "#{root.val},#{self.serialize(root.left)}#{self.serialize(root.right)}"
  end

  def self.deserialize(data)
    deserialize_helper = lambda do |nodes|
      val = nodes.shift
      return nil if val == 'None'

      node = Node.new(val)
      node.left = deserialize_helper.call(nodes)
      node.right = deserialize_helper.call(nodes)
      node
    end

    node_data = data.split(',')
    deserialize_helper.call(node_data)
  end
end
