require_relative '../../test_helper'
require_relative 'solution014'
require 'set'

RSpec.describe DailyCodingProblem014 do
  describe '.find_intersection' do
    context 'when there is an intersection' do
      it 'returns the first common element' do
        list1 = [3, 7, 8, 10]
        list2 = [99, 1, 8, 10]
        expect(described_class.find_intersection(list1, list2)).to eq(8)
      end
    end

    context 'when there is no intersection' do
      it 'returns nil' do
        list1 = [3, 7, 9, 10]
        list2 = [99, 1, 4, 2]
        expect(described_class.find_intersection(list1, list2)).to be_nil
      end
    end

    context 'when lists have multiple intersections' do
      it 'returns the first common element based on set order' do
        list1 = [3, 7, 12, 14]
        list2 = [99, 12, 7, 10]
        expect(described_class.find_intersection(list1, list2)).to eq(12)
      end
    end
  end
end
