require_relative '../test_helper'
require_relative 'solution026'

RSpec.describe DailyCodingProblem026 do
  describe '.rand7' do
    it 'returns a number between 1 and 7 inclusive' do
      1000.times do
        result = DailyCodingProblem026.rand7
        expect(result).to be_between(1, 7).inclusive
      end
    end

    it 'returns numbers with approximately uniform distribution' do
      results = Array.new(7, 0)
      iterations = 1_000_000

      iterations.times { results[DailyCodingProblem026.rand7 - 1] += 1 }

      mean = iterations / 7.0
      variance = results.map { |x| (x - mean) ** 2 }.sum / 7.0
      std_dev = Math.sqrt(variance)

      # Each value should be within 5% of the mean for a uniform distribution
      results.each do |count|
        expect(count).to be_within(mean * 0.05).of(mean)
      end

      # Standard deviation should be reasonably small for a uniform distribution
      expect(std_dev).to be < (mean * 0.1)
    end
  end
end