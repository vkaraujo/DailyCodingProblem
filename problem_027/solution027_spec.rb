require_relative '../test_helper'
require_relative 'solution027'

RSpec.describe DailyCodingProblem027 do
  describe '.max_profit' do
    context 'when goven a valid stock price array' do
      it 'returns the correct maximum profit' do
        expect(DailyCodingProblem027.max_profit([9, 11, 8, 5, 7, 10])).to eq(5)
        expect(DailyCodingProblem027.max_profit([2, 4, 1])).to eq(2)
      end
    end

    context 'when prices are in descending order (no profit possible)' do
      it 'returns' do
        expect(DailyCodingProblem027.max_profit([10, 9, 8, 7, 6, 5])).to eq(0)
      end
    end

    context 'when prices have only one day' do
      it 'returns 0' do
        expect(DailyCodingProblem027.max_profit([5])).to eq(0)
      end
    end

    context 'when the array is empty' do
      it 'returns 0' do
        expect(DailyCodingProblem027.max_profit([])).to eq(0)
      end
    end

    context 'when all prices are the same' do
      it 'returns 0' do
        expect(DailyCodingProblem027.max_profit([5, 5, 5, 5, 5])).to eq(0)
      end
    end
  end
end
