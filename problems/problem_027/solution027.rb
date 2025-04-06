module DailyCodingProblem027
  extend self

  def max_profit(prices)
    return 0 if prices.empty?

    min_price = prices[0]
    max_profit = 0

    prices.each do |price|
      min_price = [min_price, price].min
      max_profit = [max_profit, price - min_price].max
    end

    max_profit
  end
end

# Example usage:
prices = [9, 11, 8, 5, 7, 10]
puts DailyCodingProblem027.max_profit(prices) # Output: 5
