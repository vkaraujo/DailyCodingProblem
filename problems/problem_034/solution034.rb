# frozen_string_literal: true

module DailyCodingProblem034
  class RandomGenerator
    def rand7
      rand(1..7)
    end

    def rand5
      loop do
        num = rand7
        return num if num <= 5
      end
    end
  end
end
