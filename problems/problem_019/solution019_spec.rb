require_relative '../../test_helper'
require_relative 'solution019'

RSpec.describe DailyCodingProblem019 do
  describe ".justify_text" do
    let(:words) { ["the", "quick", "brown", "fox", "jumps", "over", "the", "lazy", "dog"] }
    let(:k) { 16 }

    it "returns an empty array when no words are provided" do
      expect(DailyCodingProblem019.justify_text([], k)).to be_empty
    end
  end
end
