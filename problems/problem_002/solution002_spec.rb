require_relative '../../test_helper'
require_relative 'solution002'

RSpec.describe DailyCodingProblem002 do
  describe ".product_except_self" do
    it "returns the product of all elements except itself for each element" do
      expect(DailyCodingProblem002.product_except_self([1, 2, 3, 4, 5])).to eq([120, 60, 40, 30, 24])
      expect(DailyCodingProblem002.product_except_self([3, 2, 1])).to eq([2, 3, 6])
    end

    it "raises ZeroDivisionError with arrays containing zero" do
      expect { DailyCodingProblem002.product_except_self([0, 1, 2, 3, 4]) }.to raise_error(ZeroDivisionError)
    end
  end

  describe ".product_except_self_no_division" do
    it "returns the product of all elements except itself for each element without using division" do
      expect(DailyCodingProblem002.product_except_self_no_division([1, 2, 3, 4, 5])).to eq([120, 60, 40, 30, 24])
      expect(DailyCodingProblem002.product_except_self_no_division([3, 2, 1])).to eq([2, 3, 6])
    end

    it "handles arrays with zero" do
      expect(DailyCodingProblem002.product_except_self_no_division([0, 1, 2, 3, 4])).to eq([24, 0, 0, 0, 0])
    end
  end
end
