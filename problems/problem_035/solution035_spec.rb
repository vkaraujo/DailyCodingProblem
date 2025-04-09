# frozen_string_literal: true

require_relative '../../test_helper'
require_relative 'solution035'

RSpec.describe DailyCodingProblem035::Reverser do
  let(:node_class) { DailyCodingProblem035::ListNode }
  subject { described_class.new }

  def build_list(values)
    head = nil
    values.reverse.each { |val| head = node_class.new(val, head) }
    head
  end

  def to_a(head)
    result = []
    node = head
    while node
      result << node.val
      node = node.next
    end
    result
  end

  it 'reverses a list of multiple nodes' do
    head = build_list([1, 2, 3, 4])
    reversed = subject.reverse(head)
    expect(to_a(reversed)).to eq([4, 3, 2, 1])
  end

  it 'reverses a single-node list' do
    head = build_list([42])
    reversed = subject.reverse(head)
    expect(to_a(reversed)).to eq([42])
  end

  it 'returns nil for an empty list' do
    expect(subject.reverse(nil)).to be_nil
  end
end
