require_relative '../../test_helper'
require_relative 'solution017'

RSpec.describe DailyCodingProblem017 do
  describe ".min_steps" do
    context "when there is a valid path" do
      it "returns the correct minimum number of steps to reach the goal" do
        board = [
          [false, false, false, false],
          [true, true, false, true],
          [false, false, false, false],
          [false, false, false, false]
        ]
        start = [3, 0]
        goal = [0, 0]

        expect(DailyCodingProblem017.min_steps(board, start, goal)).to eq(7)
      end
    end

    context "when the start or goal is on a wall" do
      it "returns nil if start is a wall" do
        board = [
          [false, false, false, false],
          [false, false, false, false],
          [true, true, true, true],
          [false, false, false, false]
        ]
        start = [2, 0] # Start on a wall
        goal = [0, 0]

        expect(DailyCodingProblem017.min_steps(board, start, goal)).to be_nil
      end

      it "returns nil if goal is a wall" do
        board = [
          [true, false, false, false],
          [false, false, false, false],
          [false, false, false, false],
          [false, false, false, false]
        ]
        start = [3, 0]
        goal = [0, 0] # Goal on a wall

        expect(DailyCodingProblem017.min_steps(board, start, goal)).to be_nil
      end
    end

    context "when there is no possible path" do
      it "returns nil if no path exists" do
        board = [
          [false, true, true, true],
          [true, true, true, true],
          [false, false, false, true],
          [false, false, false, false]
        ]
        start = [3, 0]
        goal = [0, 0]

        expect(DailyCodingProblem017.min_steps(board, start, goal)).to be_nil
      end
    end
  end
end
