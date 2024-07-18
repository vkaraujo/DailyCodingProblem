module DailyCodingProblem025
  class MaxStack
    def initialize
      @stack = []
      @max_stack = []
    end

    def push(val)
      @stack.push(val)
      if @max_stack.empty? || val >= @max_stack.last
        @max_stack.push(val)
      end
    end

    def pop
      return nil if @stack.empty?
      val = @stack.pop
      if val == @max_stack.last
        @max_stack.pop
      end
      val
    end

    def max
      return nil if @max_stack.empty?
      @max_stack.last
    end
  end
end
