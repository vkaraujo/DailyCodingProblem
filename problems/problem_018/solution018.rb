module DailyCodingProblem018
  def self.balanced_brackets(str)
    stack = []
    process_characters(str, stack)
    stack.empty?
  end

  def self.process_characters(str, stack)
    str.each_char do |char|
      if opening_bracket?(char)
        stack.push(char)
      elsif closing_bracket?(char)
        return false if stack.empty? || stack.pop != matching_bracket(char)
      end
    end
    true
  end

  def self.opening_bracket?(char)
    ['(', '{', '['].include?(char)
  end

  def self.closing_bracket?(char)
    [')', '}', ']'].include?(char)
  end

  def self.matching_bracket(char)
    { ')' => '(', '}' => '{', ']' => '[' }[char]
  end
end
