module DailyCodingProblem001
  def self.has_pair_with_sum?(nums, k)
    seen = {}
    nums.each do |num|
      return true if seen[k - num]
      seen[num] = true
    end
    false
  end
end
