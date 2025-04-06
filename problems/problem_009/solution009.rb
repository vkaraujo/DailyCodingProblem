module DailyCodingProblem009
  def schedule(f, n)
    Thread.new do
      sleep(n / 1000.0)
      f.call
    end
  end
end
