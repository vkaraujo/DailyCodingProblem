require_relative '../test_helper'
require_relative 'solution004'

RSpec.describe DailyCodingProblem004 do
  describe '.first_missing_positive_simple' do
    context 'when array contains negatives and positives' do
      it 'returns the first missing positive integer' do
        expect(described_class.first_missing_positive([3, 4, -1, 1])).to eq(2)
      end
    end

    context 'when array contains all sequential positive numbers starting from 1' do
      it 'returns the next consecutive number' do
        expect(described_class.first_missing_positive([1, 2, 3])).to eq(4)
      end
    end

    context 'when array contains zero and doesnt contain 1' do
      it 'returns 1' do
        expect(described_class.first_missing_positive([0, 2, 3])).to eq(1)
      end
    end

    context 'when array contains duplicates' do
      it 'ignores duplicates and returns the first missing positive integer' do
        expect(described_class.first_missing_positive([1, 1, 2, 2])).to eq(3)
      end
    end

    context 'when array is empty' do
      it 'returns 1' do
        expect(described_class.first_missing_positive([])).to eq(1)
      end
    end

    context 'when array contains a large gap between positive numbers' do
      it 'returns the first missing positive integer within the gap' do
        expect(described_class.first_missing_positive([1, 100])).to eq(2)
      end
    end
  end
end
