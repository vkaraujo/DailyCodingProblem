
module DailyCodingProblem024
  def self.power_set(set)
    result = [[]]
    set.each do |element|
      result += result.map { |subset| subset + [element] }
    end
    result
  end
end

# Test case
input_set = [1, 2, 3]
output = DailyCodingProblem024.power_set(input_set)
puts output.inspect
