module DailyCodingProblem008
  class Node
    attr_accessor :value, :left, :right

    def initialize(value, left = nil, right = nil)
      @value = value
      @left = left
      @right = right
    end
  end

  class UnivalTreeCounter
    def initialize(root)
      @root = root
    end

    def count_unival_subtrees
      _, count = unival_subtree?(@root)
      count
    end

    private

    def unival_subtree?(node)
      return [true, 0] if node.nil?

      left_unival, left_count = unival_subtree?(node.left)
      right_unival, right_count = unival_subtree?(node.right)

      total_count = left_count + right_count

      is_unival = unival_tree_root?(node, left_unival, right_unival)

      [is_unival, is_unival ? total_count +1 : total_count]
    end

    def unival_tree_root?(node, left_unival, right_unival)
      left_valid = node.left.nil? || node.left.value == node.value
      right_valid = node.right.nil? || node.right.value == node.value

      left_unival && right_unival && left_valid && right_valid
    end
  end
end
