module DailyCodingProblem011
  def self.estimate_pi(num_samples)
    inside_circle = 0

    num_samples.times do
      x = rand(-1.0..1.0)
      y = rand(-1.0..1.0)

      if x**2 + y**2 <= 1
        inside_circle += 1
      end
    end

    # Calculate pi based on the ratio of points inside the circle to the total points
    4.0 * inside_circle / num_samples
  end
end

# The Monte Carlo method is a statistical technique that involves solving problems through the use of random sampling.
# To estimate π (pi) using the Monte Carlo method, you can simulate random points in a square and 
# determine how many fall inside a circle inscribed within that square. 
# The ratio of the number of points inside the circle to the total number of points can be used to estimate π.
