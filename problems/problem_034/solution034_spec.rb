require_relative '../../test_helper'
require_relative 'solution034'

RSpec.describe DailyCodingProblem034::RandomGenerator do
  subject { described_class.new }

  it 'only returns values between 1 and 5 inclusive' do
    100.times do
      result = subject.rand5
      expect(result).to be_between(1, 5)
    end
  end

  it 'is roughly uniform over many trials' do
    results = Hash.new(0)
    trials = 10_000

    trials.times { results[subject.rand5] += 1 }

    avg = trials / 5.0
    results.each_value do |count|
      expect(count).to be_within(avg * 0.2).of(avg)
    end
  end
end
