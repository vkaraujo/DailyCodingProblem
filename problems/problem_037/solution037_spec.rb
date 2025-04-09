# frozen_string_literal: true

require_relative '../../test_helper'
require_relative 'solution037'

RSpec.describe DailyCodingProblem037::PhoneLetterCombinations do
  let(:mapping) do
    {
      "2" => %w[a b c],
      "3" => %w[d e f],
      "4" => %w[g h i]
    }
  end

  subject { described_class.new(mapping) }

  it 'generates all combinations for "23"' do
    expected = %w[
      ad ae af
      bd be bf
      cd ce cf
    ]
    result = subject.combinations("23")
    expect(result).to match_array(expected)
  end

  it 'returns an empty array for empty input' do
    expect(subject.combinations("")).to eq([])
  end

  it 'handles unknown digits gracefully by skipping them' do
    expect(subject.combinations("29")).to eq([]) # no mapping for "9"
  end

  it 'generates combinations for single digit' do
    expect(subject.combinations("2")).to match_array(%w[a b c])
  end

  it 'generates combinations for "24"' do
    expected = %w[
      ag ah ai
      bg bh bi
      cg ch ci
    ]
    expect(subject.combinations("24")).to match_array(expected)
  end
end
