require_relative '../../test_helper'
require_relative 'solution022'

RSpec.describe DailyCodingProblem022 do
  describe '.encode' do
    it 'encodes an empty string' do
      expect(DailyCodingProblem022.encode('')).to eq('')
    end

    it 'encodes a single character string' do
      expect(DailyCodingProblem022.encode('A')).to eq('1A')
    end

    it 'encodes a string with no repeating characters' do
      expect(DailyCodingProblem022.encode('ABCD')).to eq('1A1B1C1D')
    end

    it 'encodes a string with repeating characters' do
      expect(DailyCodingProblem022.encode('AAAABBBCCDAA')).to eq('4A3B2C1D2A')
    end
  end

  describe '.decode' do
    it 'decodes an empty string' do
      expect(DailyCodingProblem022.decode('')).to eq('')
    end

    it 'decodes a single character string' do
      expect(DailyCodingProblem022.decode('1A')).to eq('A')
    end

    it 'decodes a string with no repeating characters' do
      expect(DailyCodingProblem022.decode('1A1B1C1D')).to eq('ABCD')
    end

    it 'decodes a string with repeating characters' do
      expect(DailyCodingProblem022.decode('4A3B2C1D2A')).to eq('AAAABBBCCDAA')
    end
  end
end
