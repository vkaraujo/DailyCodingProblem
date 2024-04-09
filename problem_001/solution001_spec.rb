require_relative 'solution001'

RSpec.describe DailyCodingProblem001 do
  it 'returns true if two numbers add up to k' do
    expect(DailyCodingProblem001.has_pair_with_sum?([10, 15, 3, 7], 17)).to eq(true)
  end

  it 'returns false if no two numbers add up to k' do
    expect(DailyCodingProblem001.has_pair_with_sum?([1, 2, 3, 9], 17)).to eq(false)
  end

  it 'works with negative numbers' do
    expect(DailyCodingProblem001.has_pair_with_sum?([-10, 20, -3, 7], 17)).to eq(true)
  end

  it 'works with zero' do
    expect(DailyCodingProblem001.has_pair_with_sum?([0, 15, -5, 5], 0)).to eq(true)
  end
end
