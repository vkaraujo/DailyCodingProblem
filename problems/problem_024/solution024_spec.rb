require_relative '../../test_helper'
require_relative 'solution024'

RSpec.describe DailyCodingProblem024 do
  describe '.power_set' do
    it 'returns the power set of an empty set' do
      expect(DailyCodingProblem024.power_set([])).to eq([[]])
    end

    it 'returns the power set of a set with one element' do
      expect(DailyCodingProblem024.power_set([1])).to eq([[], [1]])
    end

    it 'returns the power set of a set with two elements' do
      expect(DailyCodingProblem024.power_set([1, 2])).to eq([[], [1], [2], [1, 2]])
    end

    it 'returns the power set of a set with three elements' do
      expect(DailyCodingProblem024.power_set([1, 2, 3])).to eq([[], [1], [2], [1, 2], [3], [1, 3], [2, 3], [1, 2, 3]])
    end

    it 'returns the power set of a set with distinct elements' do
      input_set = [4, 5, 6]
      expected_output = [
        [], [4], [5], [4, 5], [6], [4, 6], [5, 6], [4, 5, 6]
      ]
      expect(DailyCodingProblem024.power_set(input_set)).to eq(expected_output)
    end
  end
end
