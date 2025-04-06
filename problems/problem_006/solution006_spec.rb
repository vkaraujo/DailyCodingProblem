require_relative '../../test_helper'
require_relative 'solution006'

RSpec.describe DailyCodingProblem006::XORLinkedList do
  subject { described_class.new }

  describe '#add and #get' do
    it 'correctly adds and retrieves elements' do
      subject.add('a')
      subject.add('b')
      subject.add('c')

      expect(subject.get(0)).to eq('a')
      expect(subject.get(1)).to eq('b')
      expect(subject.get(2)).to eq('c')
    end

    it 'handles adding and getting from a large list' do
      100.times { |i| subject.add(i) }
      100.times { |i| expect(subject.get(i)).to eq(i) }
    end
  end
end
