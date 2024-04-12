module DailyCodingProblem010
  class TrieNode
    attr_accessor :children, :is_end_of_word

    def initialize
      @children = {}
      @is_end_of_word = false
    end
  end

  class Trie
    def initialize
      @root = TrieNode.new
    end

    def insert(word)
      node = @root

      word.each_char do |char|
        node.children[char] ||= DailyCodingProblem010::TrieNode.new
        node = node.children[char]
      end

      node.is_end_of_word = true
    end

    def find_all_with_prefix(prefix)
      node = @root

      prefix.each_char do |char|
        return [] unless node.children[char]

        node = node.children[char]
      end

      collect_words(node, prefix, [])
    end

    private

    def collect_words(node, prefix, words)
      words << prefix if node.is_end_of_word

      node.children.each do |char, child_node|
        collect_words(child_node, prefix + char, words)
      end

      words
    end
  end
end
