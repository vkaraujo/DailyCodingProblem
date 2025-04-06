require_relative '../../test_helper'
require_relative 'solution010'

RSpec.describe DailyCodingProblem010::Trie do
  context "Autocomplete system" do
    before :each do
      @trie = DailyCodingProblem010::Trie.new
      %w[dog deer deal].each { |word| @trie.insert(word) }
    end

    it "finds all words starting with a specific prefix" do
      expect(@trie.find_all_with_prefix('de')).to contain_exactly('deer', 'deal')
    end

    it "returns an empty array when no words start with the prefix" do
      expect(@trie.find_all_with_prefix('cat')).to be_empty
    end

    it "handles the case of an empty Trie" do
      empty_trie = DailyCodingProblem010::Trie.new
      expect(empty_trie.find_all_with_prefix('any')).to be_empty
    end

    it "correctly identifies words from a single letter prefix" do
      expect(@trie.find_all_with_prefix('d')).to contain_exactly('dog', 'deer', 'deal')
    end

    it "returns an empty array for a prefix longer than any word in the trie" do
      expect(@trie.find_all_with_prefix('deerz')).to be_empty
    end
  end
end
