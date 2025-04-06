require_relative '../../test_helper'
require_relative 'solution013'

RSpec.describe DailyCodingProblem013 do
  describe '.min_cost_to_paint_houses' do
    let(:costs) { [[17, 2, 17], [16, 16, 5], [14, 3, 19]] }

    it 'calculates the minimum cost to paint all houses' do
      expect(described_class.min_cost_to_paint_houses(costs)).to eq(10)
    end
  end

  describe 'private methods' do
    before do
      described_class.send(:initialize_costs, costs)
      described_class.send(:fill_cost_table, costs)
    end

    let(:costs) { [[17, 2, 17], [16, 16, 5], [14, 3, 19]] }

    describe '.initialize_costs' do
      it 'initializes costs correctly for the first house' do
        expect(described_class.instance_variable_get(:@dp)[0]).to eq([17, 2, 17])
      end
    end

    describe '.find_min_cost_for_color' do
      it 'finds the minimum cost for a given color avoiding the same color in the previous house' do
        described_class.send(:initialize_costs, costs)
        min_cost = described_class.send(:find_min_cost_for_color, 1, 2)
        expect(min_cost).to eq(2)
      end
    end

    describe '.find_minimum_cost' do
      it 'finds the minimum total cost after all houses have been processed' do
        described_class.send(:initialize_costs, costs)
        described_class.send(:fill_cost_table, costs)
        min_cost = described_class.send(:find_minimum_cost)
        expect(min_cost).to eq(10)
      end
    end
  end
end
