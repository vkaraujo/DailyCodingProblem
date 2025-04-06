require 'set'

module DailyCodingProblem014
  def self.find_intersection(list1, list2)
    # Convert arrays to set to eliminate duplicates and make lookup O(1)
    set1 = list1.to_set
    set2 = list2.to_set

    # Find intersection of sets
    intersection = set1 & set2

    # Return the first common element as the intersection
    intersection.first
  end
end
