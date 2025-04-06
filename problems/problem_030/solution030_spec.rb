require_relative '../../test_helper'
require_relative 'solution030'

RSpec.describe DailyCodingProblem030::WordFinder do
  let(:matrix) do
    [
      ['F', 'A', 'C', 'I'],
      ['O', 'B', 'Q', 'P'],
      ['A', 'N', 'O', 'B'],
      ['M', 'A', 'S', 'S']
    ]
  end

  subject { described_class.new }

  it 'returns true for a word found vertically (FOAM)' do
    expect(subject.word_exists?(matrix, 'FOAM')).to eq(true)
  end

  it 'returns true for a word found horizontally (MASS)' do
    expect(subject.word_exists?(matrix, 'MASS')).to eq(true)
  end

  it 'returns false for a word not in the matrix (DOG)' do
    expect(subject.word_exists?(matrix, 'DOG')).to eq(false)
  end

  it 'returns false for diagonal words (e.g., FBOB)' do
    expect(subject.word_exists?(matrix, 'FBOB')).to eq(false)
  end

  it 'returns true for a word in the middle row (BQPO)' do
    expect(subject.word_exists?(matrix, 'BQPO')).to eq(false)
  end

  it 'returns true for a column word (ABOS)' do
    expect(subject.word_exists?(matrix, 'ABOS')).to eq(false)
  end

  it 'handles empty matrix' do
    expect(subject.word_exists?([], 'ANY')).to eq(false)
  end
end
