class Merge
  def initialize(array_to_sort)
    recursive_divisor_and_collector(array_to_sort)
  end

  def recursive_divisor_and_collector(array_to_sort)
    return array_to_sort if array_to_sort.size <= 1
    array_divided = array_to_sort.slice!( (array_to_sort.size/2).round, array_to_sort.length )
    sorted_array = merge(recursive_divisor_and_collector(array_divided), recursive_divisor_and_collector(array_to_sort))
  end

  def merge(left_unsorted_array, right_unsorted_array)
    sorted_array = []
    while left_unsorted_array.size >= 1 && right_unsorted_array.size >= 1
      if left_unsorted_array[0] <= right_unsorted_array[0]
        sorted_array << left_unsorted_array.shift
      else 
        sorted_array << right_unsorted_array.shift
      end
    end
    sorted_array + left_unsorted_array + right_unsorted_array
  end
end
