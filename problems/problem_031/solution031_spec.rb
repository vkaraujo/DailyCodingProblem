require_relative '../../test_helper'
require_relative 'solution031'

RSpec.describe DailyCodingProblem031::SpiralPrinter do
  subject { described_class.new }

  it 'prints the spiral for a 4x5 matrix' do
    matrix = [
      [1,  2,  3,  4,  5],
      [6,  7,  8,  9,  10],
      [11, 12, 13, 14, 15],
      [16, 17, 18, 19, 20]
    ]

    expected_output = [
      1, 2, 3, 4, 5,
      10, 15, 20,
      19, 18, 17, 16,
      11, 6,
      7, 8, 9,
      14, 13, 12
    ]

    output = capture_stdout { subject.print_spiral(matrix) }
    result = output.strip.split("\n").map(&:to_i)

    expect(result).to eq(expected_output)
  end

  it 'handles an empty matrix' do
    output = capture_stdout { subject.print_spiral([]) }
    expect(output.strip).to eq('')
  end

  def capture_stdout
    original_stdout = $stdout
    $stdout = StringIO.new
    yield
    $stdout.string
  ensure
    $stdout = original_stdout
  end
end
