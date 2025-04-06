require_relative '../../test_helper'
require_relative 'solution018'

RSpec.describe DailyCodingProblem018 do
  describe ".balanced_brackets" do
    it "returns true for balanced brackets '([])[]({})'" do
      expect(DailyCodingProblem018.balanced_brackets("([])[]({})")).to be true
    end

    it "returns false for unbalanced brackets '([)]'" do
      expect(DailyCodingProblem018.balanced_brackets("([)]")).to be false
    end

    it "returns false for unbalanced brackets '((()'" do
      expect(DailyCodingProblem018.balanced_brackets("((()")).to be false
    end

    it "returns true for empty string" do
      expect(DailyCodingProblem018.balanced_brackets("")).to be true
    end

    it "returns true for single set of matching brackets '()'" do
      expect(DailyCodingProblem018.balanced_brackets("()")).to be true
    end

    it "returns false for single opening bracket '(' without closure" do
      expect(DailyCodingProblem018.balanced_brackets("(")).to be false
    end
  end
end
