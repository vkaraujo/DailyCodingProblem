require_relative '../test_helper'
require_relative 'solution011'

RSpec.describe DailyCodingProblem011 do
  describe '.estimate_pi' do
    it 'returns a value close to π' do
      samples = 100_000
      estimated_pi = described_class.estimate_pi(samples)
      expect(estimated_pi).to be_within(0.05).of(Math::PI)
    end
  end
end
