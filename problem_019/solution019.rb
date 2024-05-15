module DailyCodingProblem019
  class << self
    def justify_text(words, k)
      current_line = []
      current_length = 0
      lines = []

      words.each do |word|
        if new_line_needed?(current_line, current_length, word, k)
          lines << justify_line(current_line, current_length, k)
          current_line.clear
          current_length = 0
        end
        current_line << word
        current_length += word.length
      end

      lines << left_justify_line(current_line, k) unless current_line.empty?
      lines
    end

    private

    def new_line_needed?(current_line, current_length, word, k)
      current_length + word.length + current_line.size > k
    end

    def justify_line(line, line_length, k)
      return line.first.ljust(k) if line.size == 1

      number_of_spaces = k - line_length
      gaps = line.size - 1
      min_spaces = number_of_spaces / gaps
      extra_spaces = number_of_spaces % gaps

      result = line.first
      line[1..].each_with_index do |word, index|
        space_count = min_spaces + (index < extra_spaces ? 1 : 0)
        result += ' ' * space_count + word
      end
      result
    end

    def left_justify_line(line, k)
      sentence = line.join(' ')
      sentence.ljust(k)
    end
  end
end
