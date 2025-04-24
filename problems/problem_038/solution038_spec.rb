# frozen_string_literal: true

require_relative '../../test_helper'
require_relative 'solution038'

RSpec.describe DailyCodingProblem038::FileReader do
  subject { described_class.new("Hello world") }

  it 'reads less than 7 characters' do
    expect(subject.read_n(5)).to eq("Hello")
  end

  it 'reads exactly 7 characters' do
    expect(subject.read_n(7)).to eq("Hello w")
  end

  it 'reads more than 7 characters (multiple calls)' do
    expect(subject.read_n(10)).to eq("Hello worl")
  end

  it 'reads the entire file correctly' do
    reader = described_class.new("Hello world")
    expect(reader.read_n(11)).to eq("Hello world")
  end

  it 'returns empty string when reading past EOF' do
    reader = described_class.new("Hi")
    reader.read_n(2)
    expect(reader.read_n(5)).to eq("")
  end
end
