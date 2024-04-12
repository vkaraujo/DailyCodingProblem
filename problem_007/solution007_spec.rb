require_relative '../test_helper'
require_relative 'solution007'

RSpec.describe DailyCodingProblem007 do
  describe '.num_decodings' do
    it 'returns 0 for an empty string' do
      expect(described_class.num_decodings('')).to eq(0)
    end

    it 'returns 0 for a string starting with 0' do
      expect(described_class.num_decodings('01')).to eq(0)
    end

    it 'returns 1 for a string with a single non-zero digit' do
      expect(described_class.num_decodings('8')).to eq(1)
    end

    it 'returns the correct count for a string that can be decoded in multiple ways' do
      expect(described_class.num_decodings('111')).to eq(3)  # 'aaa', 'ka', 'ak'
    end

    it 'returns 1 for a string of all ones with length n' do
      expect(described_class.num_decodings('11')).to eq(2)  # 'aa', 'k'
    end

    it 'returns the correct count for a string with no valid double-digit decodings' do
      expect(described_class.num_decodings('27')).to eq(1)  # 'bg'
    end

    it 'handles cases with multiple zeros correctly' do
      expect(described_class.num_decodings('1001')).to eq(0)  # not decodable
    end

    it 'returns the correct count for a complex valid string' do
      expect(described_class.num_decodings('2626')).to eq(4)  # 'bfbf', 'zbf', 'bfz', 'zz'
    end
  end
end
