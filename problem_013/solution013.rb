module DailyCodingProblem013
  class << self
    def min_cost_to_paint_houses(costs)
      initialize_costs(costs)
      fill_cost_table(costs)
      find_minimum_cost
    end

    private

    # Initializes the dp array with the cost of painting the first house
    def initialize_costs(costs)
      @n = costs.length    # Number of houses
      @k = costs[0].length # Number of colors
      @dp = Array.new(@n) { Array.new(@k, 0) }
      @dp[0] = costs[0].dup
    end

    # Fills the dp table based on the costs to paint each house
    def fill_cost_table(costs)
      (1...@n).each do |i|
        (0...@k).each do |j|
          @dp[i][j] = costs[i][j] + find_min_cost_for_color(i, j)
        end
      end
    end

    # Finds the minimum cost for painting house i with color j
    def find_min_cost_for_color(i, j)
      min_cost = Float::INFINITY

      (0...@k).each do |m|
        next if m == j

        min_cost = [@dp[i - 1][m], min_cost].min
      end

      min_cost
    end

    # Returns the minimum cost to paint all houses
    def find_minimum_cost
      @dp[@n - 1].min
    end
  end
end
