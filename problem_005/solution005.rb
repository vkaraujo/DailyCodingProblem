module DailyCodingProblem005
  def self.cons(a, b)
    proc { |f| f.call(a, b) }
  end

  def self.car(pair)
    pair.call(->(a, _) { a })
  end

  def self.cdr(pair)
    pair.call(->(_, b) { b })
  end
end

# Test cases
puts DailyCodingProblem005.car(DailyCodingProblem005.cons(3, 4))  # Should output 3
puts DailyCodingProblem005.cdr(DailyCodingProblem005.cons(3, 4))  # Should output 4
