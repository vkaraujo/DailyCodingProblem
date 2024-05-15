module DailyCodingProblem020
  class << self
    def encode(input_string)
      return "" if input_string.empty?
      encoded = ""
      process_encoding(input_string, encoded)
      encoded
    end

    def decode(encoded_string)
      return "" if encoded_string.empty?
      decoded = ""
      process_decoding(encoded_string, decoded)
      decoded
    end

    private

    def process_encoding(input_string, encoded)
      count = 1
      (1...input_string.length).each do |i|
        if input_string[i] == input_string[i - 1]
          count += 1
        else
          encoded << format_segment(count, input_string[i - 1])
          count = 1
        end
      end
      encoded << format_segment(count, input_string[-1])
    end

    def process_decoding(encoded_string, decoded)
      count = 0
      encoded_string.each_char do |char|
        if char.match?(/\d/)
          count = update_count(count, char)
        else
          decoded << repeat_char(char, count)
          count = 0
        end
      end
    end

    def format_segment(count, char)
      "#{count}#{char}"
    end

    def update_count(current_count, digit_char)
      current_count * 10 + digit_char.to_i
    end

    def repeat_char(char, count)
      char * count
    end
  end
end

