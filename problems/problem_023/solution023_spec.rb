require_relative '../../test_helper'
require_relative 'solution023'

RSpec.describe DailyCodingProblem023 do
  describe '.edit_distance' do
    it 'returns 0 for identical strings' do
      expect(DailyCodingProblem023.edit_distance('hello', 'hello')).to eq(0)
    end

    it 'returns the length of the other string for empty string inputs' do
      expect(DailyCodingProblem023.edit_distance('', 'hello')).to eq(5)
      expect(DailyCodingProblem023.edit_distance('hello', '')).to eq(5)
    end

    it 'returns the correct edit distance for given strings' do
      expect(DailyCodingProblem023.edit_distance('kitten', 'sitting')).to eq(3)
      expect(DailyCodingProblem023.edit_distance('flaw', 'lawn')).to eq(2)
      expect(DailyCodingProblem023.edit_distance('intention', 'execution')).to eq(5)
    end
  end
end
