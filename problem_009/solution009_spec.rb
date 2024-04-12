require_relative '../test_helper'
require_relative 'solution009'

RSpec.describe DailyCodingProblem009 do
  include described_class

  it 'calls the function after the specified delay' do
    f = spy('function')
    schedule(f, 100)

    expect(f).not_to have_received(:call)

    sleep(0.2)

    expect(f).to have_received(:call).once
  end
end
