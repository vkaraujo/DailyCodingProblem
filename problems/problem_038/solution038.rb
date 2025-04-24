# frozen_string_literal: true

module DailyCodingProblem038
  class FileReader
    def initialize(file_content)
      @file = file_content
      @pointer = 0
    end

    # Simulates reading 7 characters at a time
    def read7
      chunk = @file[@pointer, 7]
      @pointer += chunk.length
      chunk
    end

    # Reads n characters using read7
    def read_n(n)
      result = ''
      while result.length < n
        chunk = read7
        break if chunk.empty?

        result += chunk
      end
      result[0...n]
    end
  end
end
