module DailyCodingProblem016
  def self.break_into_words(s, dict)
    @memo = {}
    result = word_break(s, dict)
    result.nil? ? nil : result
  end

  private

  def self.word_break(s, dict)
    return [] if s.empty?
    return @memo[s] unless @memo[s].nil?

    dict.each do |word|
      next unless s.start_with?(word)
      suffix = s[word.length..-1]
      remainder = word_break(suffix, dict)
      unless remainder.nil?
        # Found a valid way to split the string
        @memo[s] = [word] + remainder
        return @memo[s]
      end
    end

    # No valid split found
    @memo[s] = nil
  end
end
