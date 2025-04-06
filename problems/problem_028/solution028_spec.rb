require_relative '../../test_helper'
require_relative 'solution028'

RSpec.describe DailyCodingProblem028 do
  describe '.evaluate_tree' do
    context 'when given a valid arithmetic tree' do
      it 'evaluates a simple addition' do
        root = DailyCodingProblem028::TreeNode.new('+',
          DailyCodingProblem028::TreeNode.new(3),
          DailyCodingProblem028::TreeNode.new(2)
        )
        expect(DailyCodingProblem028.evaluate_tree(root)).to eq(5)
      end

      it 'evaluates a more complex expression' do
        root = DailyCodingProblem028::TreeNode.new('*',
          DailyCodingProblem028::TreeNode.new('+',
            DailyCodingProblem028::TreeNode.new(3),
            DailyCodingProblem028::TreeNode.new(2)
          ),
          DailyCodingProblem028::TreeNode.new('+',
            DailyCodingProblem028::TreeNode.new(4),
            DailyCodingProblem028::TreeNode.new(5)
          )
        )
        expect(DailyCodingProblem028.evaluate_tree(root)).to eq(45)
      end

      it 'evaluates a tree with subtraction' do
        root = DailyCodingProblem028::TreeNode.new('-',
          DailyCodingProblem028::TreeNode.new(10),
          DailyCodingProblem028::TreeNode.new(4)
        )
        expect(DailyCodingProblem028.evaluate_tree(root)).to eq(6)
      end

      it 'evaluates a tree with division' do
        root = DailyCodingProblem028::TreeNode.new('/',
          DailyCodingProblem028::TreeNode.new(10),
          DailyCodingProblem028::TreeNode.new(2)
        )
        expect(DailyCodingProblem028.evaluate_tree(root)).to eq(5.0)
      end

      it 'evaluates a tree with mixed operations' do
        root = DailyCodingProblem028::TreeNode.new('+',
          DailyCodingProblem028::TreeNode.new('*',
            DailyCodingProblem028::TreeNode.new(3),
            DailyCodingProblem028::TreeNode.new(2)
          ),
          DailyCodingProblem028::TreeNode.new('/',
            DailyCodingProblem028::TreeNode.new(10),
            DailyCodingProblem028::TreeNode.new(2)
          )
        )
        expect(DailyCodingProblem028.evaluate_tree(root)).to eq(6 + 5)
      end
    end

    context 'when given a tree with a single number' do
      it 'returns the number itself' do
        root = DailyCodingProblem028::TreeNode.new(42)
        expect(DailyCodingProblem028.evaluate_tree(root)).to eq(42)
      end
    end

    context 'when given an invalid operator' do
      it 'raises an error' do
        root = DailyCodingProblem028::TreeNode.new('x',
          DailyCodingProblem028::TreeNode.new(3),
          DailyCodingProblem028::TreeNode.new(2)
        )
        expect { DailyCodingProblem028.evaluate_tree(root) }.to raise_error("Invalid operator: x")
      end
    end
  end
end
