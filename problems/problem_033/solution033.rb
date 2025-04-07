# frozen_string_literal: true

module DailyCodingProblem033
  class PerfectNumberFinder
    def nth_perfect_number(number)
      raise ArgumentError, 'n must be a positive integer' if number < 1

      count = 0
      current = 18

      while count < number
        current += 1
        count += 1 if digit_sum(current) == 10
      end

      current
    end

    private

    def digit_sum(num)
      num.digits.sum
    end
  end
end
