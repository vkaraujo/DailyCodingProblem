module DailyCodingProblem028
  class TreeNode
    attr_accessor :value, :left, :right

    def initialize(value, left = nil, right = nil)
      @value = value
      @left = left
      @right = right
    end
  end

  extend self

  def evaluate_tree(root)
    return root.value if root.left.nil? && root.right.nil?

    left_value = evaluate_tree(root.left)
    right_value = evaluate_tree(root.right)

    case root.value
    when '+'
      left_value + right_value
    when '-'
      left_value - right_value
    when '*'
      left_value * right_value
    when '/'
      left_value / right_value.to_f
    else
      raise "Invalid operator: #{root.value}"
    end
  end
end

# Example Usage:
root = DailyCodingProblem028::TreeNode.new('*',
  DailyCodingProblem028::TreeNode.new('+', DailyCodingProblem028::TreeNode.new(3), DailyCodingProblem028::TreeNode.new(2)),
  DailyCodingProblem028::TreeNode.new('+', DailyCodingProblem028::TreeNode.new(4), DailyCodingProblem028::TreeNode.new(5))
)

puts DailyCodingProblem028.evaluate_tree(root) # Output: 45

