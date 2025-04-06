require_relative '../../test_helper'
require_relative 'solution025'

RSpec.describe DailyCodingProblem025::MaxStack do
  describe '#push' do
    it 'pushes elements onto the stack' do
      stack = DailyCodingProblem025::MaxStack.new
      stack.push(1)
      expect(stack.max).to eq(1)
      stack.push(3)
      expect(stack.max).to eq(3)
      stack.push(2)
      expect(stack.max).to eq(3)
    end
  end

  describe '#pop' do
    it 'pops elements from the stack' do
      stack = DailyCodingProblem025::MaxStack.new
      stack.push(1)
      stack.push(3)
      stack.push(2)
      expect(stack.pop).to eq(2)
      expect(stack.max).to eq(3)
      expect(stack.pop).to eq(3)
      expect(stack.max).to eq(1)
    end

    it 'returns nil when popping from an empty stack' do
      stack = DailyCodingProblem025::MaxStack.new
      expect(stack.pop).to be_nil
    end
  end

  describe '#max' do
    it 'returns the maximum element in the stack' do
      stack = DailyCodingProblem025::MaxStack.new
      stack.push(1)
      stack.push(3)
      stack.push(2)
      expect(stack.max).to eq(3)
    end

    it 'returns nil when the stack is empty' do
      stack = DailyCodingProblem025::MaxStack.new
      expect(stack.max).to be_nil
    end
  end
end
