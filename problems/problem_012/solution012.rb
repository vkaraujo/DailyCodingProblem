module DailyCodingProblem012
  class OrderLog
    def initialize(size)
      @log = Array.new(size)
      @current_index = 0
      @size = size
      @count = 0
    end

    def record(order_id)
      @log[@current_index] = order_id
      @current_index = (@current_index + 1) % @size
      @count = [@count + 1, @size].min
    end

    def get_last(i)
      return nil if i > @count

      @log[(@current_index - i) % @size]
    end
  end
end
