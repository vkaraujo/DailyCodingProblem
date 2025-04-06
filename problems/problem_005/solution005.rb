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
