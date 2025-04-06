require_relative '../../test_helper'
require_relative 'solution003'

RSpec.describe DailyCodingProblem003 do
  describe ".serialize" do
    context "when the tree is empty" do
      it "returns 'None,'" do
        expect(described_class.serialize(nil)).to eq('None,')
      end
    end

    context "when the tree has a single node" do
      it "serializes a single node correctly" do
        node = described_class::Node.new('single')
        expect(described_class.serialize(node)).to eq('single,None,None,')
      end
    end

    context "with a more complex tree" do
      it "serializes correctly" do
        node = described_class::Node.new('root', described_class::Node.new('left'), described_class::Node.new('right'))
        expect(described_class.serialize(node)).to eq('root,left,None,None,right,None,None,')
      end
    end
  end

  describe ".deserialize" do
    context "when the string is 'None,'" do
      it "returns nil" do
        expect(described_class.deserialize('None,')).to be_nil
      end
    end

    context "when the string represents a single node" do
      it "deserializes a single node correctly" do
        serialized_tree = 'single,None,None,'
        tree = described_class.deserialize(serialized_tree)
        expect(tree.val).to eq('single')
        expect(tree.left).to be_nil
        expect(tree.right).to be_nil
      end
    end

    context "with a string representing a more complex tree" do
      it "deserializes correctly" do
        serialized_tree = 'root,left,None,None,right,None,None,'
        tree = described_class.deserialize(serialized_tree)
        expect(tree.val).to eq('root')
        expect(tree.left.val).to eq('left')
        expect(tree.right.val).to eq('right')
      end
    end
  end

  #RSpec version of the test required by the challenge
  describe "Binary Tree Serialization and Deserialization" do
    it "correctly serializes and deserializes a tree" do
      node = described_class::Node.new('root', 
                described_class::Node.new('left', 
                  described_class::Node.new('left.left')), 
                described_class::Node.new('right'))
      expect(described_class.deserialize(described_class.serialize(node)).left.left.val).to eq('left.left')
    end
  end
end
