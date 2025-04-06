module DailyCodingProblem031
  class SpiralPrinter
    def print_spiral(matrix)
      return if matrix.empty?

      top = 0
      bottom = matrix.size - 1
      left = 0
      right = matrix[0].size - 1

      result = []

      while top <= bottom && left <= right
        # Traverse from left to right
        (left..right).each { |col| result << matrix[top][col] }
        top += 1

        # Traverse from top to bottom
        (top..bottom).each { |row| result << matrix[row][right] }
        right -= 1

        # Traverse from right to left (if there's still a row)
        if top <= bottom
          right.downto(left).each { |col| result << matrix[bottom][col] }
          bottom -= 1
        end

        # Traverse from bottom to top (if there's still a column)
        if left <= right
          bottom.downto(top).each { |row| result << matrix[row][left] }
          left += 1
        end
      end

      result.each { |val| puts val }
    end
  end
end

# Example usage (comment out when testing):
# printer = DailyCodingProblem031::SpiralPrinter.new
# matrix = [
#    [1,  2,  3,  4,  5],
#    [6,  7,  8,  9,  10],
#    [11, 12, 13, 14, 15],
#    [16, 17, 18, 19, 20]
#  ]
# printer.print_spiral(matrix)
