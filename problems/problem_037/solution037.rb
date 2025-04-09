# frozen_string_literal: true

module DailyCodingProblem037
  class PhoneLetterCombinations
    def initialize(mapping)
      @mapping = mapping.transform_keys(&:to_s)
    end

    def combinations(digits)
      return [] if digits.empty?

      digits = digits.chars
      letters_lists = digits.map { |digit| @mapping[digit] || [] }
      return [] if letters_lists.any?(&:empty?)

      letters_lists.shift.product(*letters_lists).map(&:join)
    end
  end
end
