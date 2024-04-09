module DailyCodingProblem001
  def self.pair_with_sum?(nums, target_sum)
    seen = {}
    nums.each do |num|
      return true if seen[target_sum - num]

      seen[num] = true
    end
    false
  end
end
