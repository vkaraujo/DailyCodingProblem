require_relative '../test_helper'
require_relative 'solution012'

RSpec.describe DailyCodingProblem012::OrderLog do
  context "with a log size of 3" do
    subject { described_class.new(3) }

    describe "#record" do
      it "records order IDs correctly" do
        expect { subject.record(1) }.not_to raise_error
        expect { subject.record(2) }.not_to raise_error
        expect { subject.record(3) }.not_to raise_error
      end
    end

    describe "#get_last" do
      before do
        subject.record(1)
        subject.record(2)
        subject.record(3)
      end

      it "returns the last i-th order ID" do
        expect(subject.get_last(1)).to eq(3)
        expect(subject.get_last(2)).to eq(2)
        expect(subject.get_last(3)).to eq(1)
      end

      it "returns nil for non-existent i-th elements" do
        expect(subject.get_last(4)).to be_nil
      end
    end

    context "with wrapping around the circular buffer" do
      before do
        subject.record(1)
        subject.record(2)
        subject.record(3)
        subject.record(4)
        subject.record(5)
      end

      it "overwrites old records correctly when exceeding size" do
        expect(subject.get_last(1)).to eq(5)
        expect(subject.get_last(2)).to eq(4)
        expect(subject.get_last(3)).to eq(3)
      end
    end
  end
end
