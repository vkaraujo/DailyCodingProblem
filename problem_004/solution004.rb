module DailyCodingProblem004
  class << self
    def first_missing_positive(nums)
      nums = filter_and_prepare(nums)
      find_missing_positive(nums)
    end

    private

    # Filters non-positive numbers, removes duplicates, and sorts the remaining numbers
    def filter_and_prepare(nums)
      nums.select(&:positive?).uniq.sort
    end

    # Iterates through the sorted list to find the first missing positive integer
    def find_missing_positive(sorted_nums)
      missing_positive = 1

      sorted_nums.each do |num|
        if num == missing_positive
          missing_positive += 1
        elsif num > missing_positive
          break
        end
      end

      missing_positive
    end
  end
end

# Tests required by the challenge
puts DailyCodingProblem004.first_missing_positive([3, 4, -1, 1]) # Expected output: 2
puts DailyCodingProblem004.first_missing_positive([1, 2, 0]) # Expected output: 3
