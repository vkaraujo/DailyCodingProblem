# frozen_string_literal: true

require_relative '../../test_helper'
require_relative 'solution033'

RSpec.describe DailyCodingProblem033::PerfectNumberFinder do
  subject { described_class.new }

  it 'returns 19 as the 1st perfect number' do
    expect(subject.nth_perfect_number(1)).to eq(19)
  end

  it 'returns 28 as the 2nd perfect number' do
    expect(subject.nth_perfect_number(2)).to eq(28)
  end

  it 'returns 46 as the 4th perfect number' do
    expect(subject.nth_perfect_number(4)).to eq(46)
  end

  it 'raises error for invalid input' do
    expect { subject.nth_perfect_number(0) }.to raise_error(ArgumentError)
  end
end
