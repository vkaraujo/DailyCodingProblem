module DailyCodingProblem026
  def self.rand5
    1 + rand(5)
  end

  def self.rand7
    while true
      # Generate a number between 1 and 25
      num = (rand5 - 1) * 5 + rand5
      # Map the number to a range of 1 to 21
      if num <= 21
        return 1 + (num - 1) % 7
      end
    end
  end
end

# Test cases
results = Array.new(7, 0)
10000.times { results[DailyCodingProblem026.rand7 - 1] += 1 }
puts "Distribution of 10000 calls to rand7(): #{results.inspect}"
  