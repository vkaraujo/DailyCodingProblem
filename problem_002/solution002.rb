module DailyCodingProblem002
  # This method solves it using division. This division effectively "removes" the current element from the product,
  # because multiplying all elements together and then dividing by one of those elements is the same as
  # multiplying all the others except that one.

  # Its limitation is getting a ZeroDivisionError if the original array has a 0.
  def self.product_except_self(nums)
    total_product = nums.reduce(1, :*)
    nums.map { |num| total_product / num }
  end

  class << self
    # No Division solution

    # Calculates the product of all elements except itself for each element in the array,
    # without using division. This is achieved by calculating the products of elements to the left and
    # right of each index, then combining these products for the final result.
    #
    # The solution is broken down into three main steps:
    # 1. `calculate_left_products`: Generates an array where each element at index 'i' contains the
    #    product of all the elements to the left of 'i' in the input array.
    # 2. `calculate_right_products`: Generates an array where each element at index 'i' contains the
    #    product of all the elements to the right of 'i' in the input array.
    # 3. `combine_products`: Combines the products from the left and right product arrays for each
    #    element to produce the final output array.

    def product_except_self_no_division(nums)
      left_products = calculate_left_products(nums)
      right_products = calculate_right_products(nums)
      combine_products(left_products, right_products)
    end

    private

    def calculate_left_products(nums)
      left_products = Array.new(nums.length, 1)
      left_product = 1
      for i in 1...nums.length
        left_product *= nums[i - 1]
        left_products[i] = left_product
      end
      left_products
    end

    def calculate_right_products(nums)
      right_products = Array.new(nums.length, 1)
      right_product = 1
      (nums.length - 2).downto(0) do |i|
        right_product *= nums[i + 1]
        right_products[i] = right_product
      end
      right_products
    end

    def combine_products(left_products, right_products)
      left_products.zip(right_products).map { |left, right| left * right }
    end
  end
end
