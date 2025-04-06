require_relative '../../test_helper'
require_relative 'solution020'

RSpec.describe DailyCodingProblem020 do
  describe ".encode" do
    it "encodes a string with consecutive characters correctly" do
      expect(DailyCodingProblem020.encode("AAAABBBCCDAA")).to eq("4A3B2C1D2A")
    end

    it "returns an empty string when encoding an empty string" do
      expect(DailyCodingProblem020.encode("")).to eq("")
    end
  end

  describe ".decode" do
    it "decodes a run-length encoded string correctly" do
      expect(DailyCodingProblem020.decode("4A3B2C1D2A")).to eq("AAAABBBCCDAA")
    end

    it "returns an empty string when decoding an empty string" do
      expect(DailyCodingProblem020.decode("")).to eq("")
    end
  end
end
