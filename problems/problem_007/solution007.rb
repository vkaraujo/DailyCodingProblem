module DailyCodingProblem007
  class << self
    def num_decodings(message)
      return 0 if message.empty? || message[0] == '0'
      return 1 if message.length == 1

      count_decodings(message)
    end

    private

    def count_decodings(message, index = 0, memo = {})
      return memo[index] if memo.key?(index)
      return 1 if index >= message.length
      return 0 if message[index] == '0'

      count = count_decodings(message, index + 1, memo)

      if index < message.length - 1 && valid_two_digit_number?(message[index, 2])
        count += count_decodings(message, index + 2, memo)
      end

      memo[index] = count
    end

    def valid_two_digit_number?(digits)
      digits.to_i.between?(10, 26)
    end
  end
end
