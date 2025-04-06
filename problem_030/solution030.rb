module DailyCodingProblem030
  class WordFinder
    def word_exists?(matrix, word)
      return false if matrix.empty? || matrix[0].empty?

      rows = matrix.size
      cols = matrix[0].size

      # Check rows (left-to-right)
      matrix.each do |row|
        return true if row.join.include?(word)
      end

      # Check columns (top-to-bottom)
      (0...cols).each do |col|
        column_string = (0...rows).map { |row| matrix[row][col] }.join
        return true if column_string.include?(word)
      end

      false
    end
  end
end
