module DailyCodingProblem021
  class << self
    def edit_distance(str1, str2)
      calculate_distance_recursive(str1, str1.length, str2, str2.length)
    end

    private

    def calculate_distance_recursive(str1, len1, str2, len2)
      return len2 if len1 == 0

      return len1 if len2 == 0

      if str1[len1 - 1] == str2[len2 - 1]
        return calculate_distance_recursive(str1, len1 - 1, str2, len2 - 1)
      end

      return 1 + [
        calculate_distance_recursive(str1, len1 - 1, str2, len2),    # Remove
        calculate_distance_recursive(str1, len1, str2, len2 - 1),    # Insert
        calculate_distance_recursive(str1, len1 - 1, str2, len2 - 1) # Replace
      ].min
    end
  end
end

