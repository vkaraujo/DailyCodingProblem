module DailyCodingProblem022
  def self.encode(input)
    return '' if input.empty?

    encoded = ''
    count = 1

    input.chars.each_with_index do |char, index|
      if end_of_segment?(input, char, index)
        encoded << segment_string(count, char)
        count = 1
      else
        count += 1
      end
    end

    encoded
  end

  def self.decode(input)
    return '' if input.empty?

    decoded = ''
    count = ''

    input.chars.each do |char|
      if digit?(char)
        count << char
      else
        decoded << decode_segment(count, char)
        count = ''
      end
    end

    decoded
  end

  private_class_method

  def self.end_of_segment?(input, char, index)
    index == input.length - 1 || char != input[index + 1]
  end

  def self.segment_string(count, char)
    "#{count}#{char}"
  end

  def self.digit?(char)
    char.match?(/\d/)
  end

  def self.decode_segment(count, char)
    char * count.to_i
  end
end

encoded_string = DailyCodingProblem022.encode('AAAABBBCCDAA')
decoded_string = DailyCodingProblem022.decode(encoded_string)

puts "Encoded: #{encoded_string}"
puts "Decoded: #{decoded_string}"