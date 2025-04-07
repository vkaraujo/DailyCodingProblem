# frozen_string_literal: true

require_relative '../../test_helper'
require_relative 'solution032'

RSpec.describe DailyCodingProblem032::MaxTripleProduct do
  subject { described_class.new }

  it 'returns the largest product for a list with positive and negative numbers' do
    expect(subject.max_product([-10, -10, 5, 2])).to eq(500)
  end

  it 'returns the product of top 3 positive numbers if they are largest' do
    expect(subject.max_product([1, 2, 3, 4, 5])).to eq(60)
  end

  it 'handles all negative numbers' do
    expect(subject.max_product([-5, -6, -2, -3])).to eq(-30)
  end

  it 'handles a mix with large negative pair and one positive' do
    expect(subject.max_product([-100, -98, 1, 2, 3])).to eq(29_400)
  end

  it 'raises error for less than 3 numbers' do
    expect { subject.max_product([1, 2]) }.to raise_error(ArgumentError)
  end
end
