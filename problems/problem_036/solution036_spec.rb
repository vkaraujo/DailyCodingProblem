# frozen_string_literal: true

require_relative '../../test_helper'
require_relative 'solution036'

RSpec.describe DailyCodingProblem036::IntervalMerger do
  subject { described_class.new }

  it 'merges overlapping intervals correctly' do
    input = [[1, 3], [5, 8], [4, 10], [20, 25]]
    expected = [[1, 3], [4, 10], [20, 25]]
    expect(subject.merge(input)).to eq(expected)
  end

  it 'returns empty array for empty input' do
    expect(subject.merge([])).to eq([])
  end

  it 'handles single interval' do
    expect(subject.merge([[2, 5]])).to eq([[2, 5]])
  end

  it 'handles fully overlapping intervals' do
    input = [[1, 10], [2, 5], [3, 4]]
    expected = [[1, 10]]
    expect(subject.merge(input)).to eq(expected)
  end

  it 'handles adjacent but not overlapping intervals' do
    input = [[1, 2], [3, 4], [5, 6]]
    expect(subject.merge(input)).to eq([[1, 2], [3, 4], [5, 6]])
  end

  it 'handles unsorted input' do
    input = [[5, 6], [1, 4], [2, 3]]
    expected = [[1, 4], [5, 6]]
    expect(subject.merge(input)).to eq(expected)
  end
end
