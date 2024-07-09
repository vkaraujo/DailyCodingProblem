module DailyCodingProblem023
  def self.edit_distance(str1, str2)
    m = str1.length
    n = str2.length

    dp = Array.new(m + 1) { Array.new(n + 1) }

    for i in 0..m
      for j in 0..n
        if i == 0
          dp[i][j] = j
        elsif j == 0
          dp[i][j] = i
        elsif str1[i - 1] == str2[j - 1]
          dp[i][j] = dp[i - 1][j - 1]
        else
          dp[i][j] = 1 + [dp[i - 1][j],    # Remove
                          dp[i][j - 1],    # Insert
                          dp[i - 1][j - 1] # Replace
                         ].min
        end
      end
    end

    dp[m][n]
  end
end

# Test case
puts DailyCodingProblem023.edit_distance('kitten', 'sitting') # Output: 3
