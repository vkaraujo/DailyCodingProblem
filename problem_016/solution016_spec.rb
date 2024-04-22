require_relative '../test_helper'
require_relative 'solution016'

RSpec.describe DailyCodingProblem016 do
  describe ".break_into_words" do
    context "when the string can be segmented into a list of dictionary words" do
      it "returns the correct segmentation for 'thequickbrownfox'" do
        dict = %w[quick brown the fox]
        s = "thequickbrownfox"

        expect(DailyCodingProblem016.break_into_words(s, dict)).to match_array(%w[the quick brown fox])
      end

      it "returns one of the valid segmentations for 'bedbathandbeyond'" do
        dict = %w[bed bath bedbath and beyond]
        s = "bedbathandbeyond"
        possible_results = [%w[bed bath and beyond], %w[bedbath and beyond]]
        result = DailyCodingProblem016.break_into_words(s, dict)

        expect(possible_results).to include(result)
      end
    end

    context "when the string cannot be segmented" do
      it "returns nil if no valid segmentation exists" do
        dict = %w[quick brown fox]
        s = "thequickbrownfox"

        expect(DailyCodingProblem016.break_into_words(s, dict)).to be_nil
      end
    end
  end
end
