# frozen_string_literal: true

module DailyCodingProblem032
  class MaxTripleProduct
    def max_product(nums)
      raise ArgumentError, 'Need at least 3 integers' if nums.size < 3

      nums.sort!
      max1 = nums[-1] * nums[-2] * nums[-3]
      max2 = nums[0] * nums[1] * nums[-1]

      [max1, max2].max
    end
  end
end
