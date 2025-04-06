require_relative '../../test_helper'
require_relative 'solution008'

RSpec.describe DailyCodingProblem008::UnivalTreeCounter do
  describe '#count_unival_subtrees' do
    context 'when the tree is empty' do
      it 'returns zero' do
        empty_tree = nil
        counter = described_class.new(empty_tree)
        expect(counter.count_unival_subtrees).to eq(0)
      end
    end

    context 'when the tree has all the same values' do
      it 'returns the count equal to the number of nodes' do
        root = DailyCodingProblem008::Node.new(1,
          DailyCodingProblem008::Node.new(1),
          DailyCodingProblem008::Node.new(1)
        )
        counter = described_class.new(root)
        expect(counter.count_unival_subtrees).to eq(3)
      end
    end

    context 'when the tree has mixed values' do
      it 'returns the correct number of unival subtrees' do
        root = DailyCodingProblem008::Node.new(0,
          DailyCodingProblem008::Node.new(1),
          DailyCodingProblem008::Node.new(0,
            DailyCodingProblem008::Node.new(1, DailyCodingProblem008::Node.new(1), DailyCodingProblem008::Node.new(1)),
            DailyCodingProblem008::Node.new(0)
          )
        )
        counter = described_class.new(root)
        expect(counter.count_unival_subtrees).to eq(5)
      end
    end
  end
end
