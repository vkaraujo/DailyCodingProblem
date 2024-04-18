module DailyCodingProblem015
  def self.min_rooms_required(intervals)
    # Sort intervals based on start times
    sorted_intervals = intervals.sort_by { |interval| interval[0] }

    # Initialize a list to act as a min-heap (sort of), where we track the end times of meetings
    end_times = []

    # Process each interval
    sorted_intervals.each do |interval|
      start_time, end_time = interval

      # Free up rooms that are no longer needed by removing past end times
      end_times.reject! { |t| t <= start_time }

      # Allocate the new room (push its end time)
      end_times << end_time

      # Sort end times to simulate priority queue behavior (min-heap)
      end_times.sort!
    end

    # The size of end_times array is the number of rooms needed
    end_times.size
  end
end
