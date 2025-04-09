# frozen_string_literal: true

module DailyCodingProblem035
  class ListNode
    attr_accessor :val, :next

    def initialize(val, nxt = nil)
      @val = val
      @next = nxt
    end
  end

  class Reverser
    def reverse(head)
      prev = nil
      current = head

      while current
        nxt = current.next
        current.next = prev
        prev = current
        current = nxt
      end

      prev
    end
  end
end
