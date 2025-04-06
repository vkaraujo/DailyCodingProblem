require_relative '../../test_helper'
require_relative 'solution021'

RSpec.describe DailyCodingProblem021 do
  describe ".edit_distance" do
    it "calculates the correct edit distance between 'kitten' and 'sitting'" do
      expect(DailyCodingProblem021.edit_distance('kitten', 'sitting')).to eq(3)
    end

    it "calculates zero for identical strings" do
      expect(DailyCodingProblem021.edit_distance('test', 'test')).to eq(0)
    end

    it "calculates the edit distance involving empty strings" do
      expect(DailyCodingProblem021.edit_distance('', 'test')).to eq(4)
      expect(DailyCodingProblem021.edit_distance('test', '')).to eq(4)
    end
  end
end
