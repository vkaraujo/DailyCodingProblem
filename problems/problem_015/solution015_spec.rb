require_relative '../../test_helper'
require_relative 'solution015'

RSpec.describe DailyCodingProblem015 do
  describe '.min_rooms_required' do
    context 'when there are overlapping intervals' do
      it 'returns the correct number of rooms' do
        intervals = [[30, 75], [0, 50], [60, 150]]
        expect(DailyCodingProblem015.min_rooms_required(intervals)).to eq(2)
      end
    end

    context 'when there are no overlapping intervals' do
      it 'returns the minimum number of rooms as the count of intervals' do
        intervals = [[10, 20], [30, 40], [50, 60]]
        expect(DailyCodingProblem015.min_rooms_required(intervals)).to eq(1)
      end
    end

    context 'when intervals are back to back' do
      it 'manages with a single room' do
        intervals = [[10, 20], [20, 30], [30, 40]]
        expect(DailyCodingProblem015.min_rooms_required(intervals)).to eq(1)
      end
    end

    context 'with complex overlapping' do
      it 'returns the correct number of rooms required' do
        intervals = [[0, 30], [5, 10], [15, 25], [20, 40]]
        expect(DailyCodingProblem015.min_rooms_required(intervals)).to eq(3)
      end
    end

    context 'with an empty list of intervals' do
      it 'requires no rooms' do
        intervals = []
        expect(DailyCodingProblem015.min_rooms_required(intervals)).to eq(0)
      end
    end
  end
end
