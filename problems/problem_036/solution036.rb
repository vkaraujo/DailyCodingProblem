# frozen_string_literal: true

module DailyCodingProblem036
  class IntervalMerger
    def merge(intervals)
      return [] if intervals.empty?

      # Step 1: sort by start of interval
      sorted = intervals.sort_by { |start_, _end| start_ }

      merged = [sorted[0]]

      sorted[1..].each do |current_start, current_end|
        last_start, last_end = merged[-1]

        if current_start <= last_end
          # overlap → merge
          merged[-1][1] = [last_end, current_end].max
        else
          # no overlap → push as-is
          merged << [current_start, current_end]
        end
      end

      merged
    end
  end
end
