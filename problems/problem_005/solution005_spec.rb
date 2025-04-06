require_relative '../../test_helper'
require_relative 'solution005'

RSpec.describe DailyCodingProblem005 do
  describe '.cons' do
    it 'creates a function that applies another function to its arguments' do
      pair_function = described_class.cons(1, 2)

      expect(pair_function.call(->(a, b) { a + b })).to eq(3)
    end
  end

  describe '.car' do
    it 'returns the first element of the pair' do
      expect(described_class.car(described_class.cons(3, 4))).to eq(3)
    end
  end

  describe '.cdr' do
    it 'returns the second element of the pair' do
      expect(described_class.cdr(described_class.cons(3, 4))).to eq(4)
    end
  end
end
