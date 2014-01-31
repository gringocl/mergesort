class MergeSort
  def initialize
  end

  def sort(array)
    order( slice_in_half(array) )
  end

  def slice_in_half(array)
    return array if array.size  <= 1
    length = array.size
    start = (length/2).round
    half = array.slice!(start, length)
    [slice_in_half(half), slice_in_half(array)]
  end

  def merge(array)
    first = array[0]
    second = array[1]
    if array?(array) && fixnum?(first)
      array
    elsif array?(first) && array?(second)
        merge(first)
        merge(second)
    else array?(first) && fixnum?(first[0])
      array << order(array[0].pop, array[1].pop)
      merge(array)
    end
  end

  def array?(a)
    a.is_a? Array
  end

  def fixnum?(a)
    a.is_a? Fixnum
  end

  def order(array)
    arrays = { left: array[0], right: array[1] , merged: []}
    while arrays[:left].size >= 1 && arrays[:right].size >= 1
      if arrays[:left][0] <= arrays[:right][0]
        order_left(arrays)
      else
        order_right(arrays)
      end
    end
    compact(arrays)
  end

  def compact(arrays)
    ordered = []
    ordered << ( arrays[:merged] + arrays[:left] + arrays[:right] )
    ordered.flatten
  end

  def order_left(arrays)
    arrays[:merged] << arrays[:left].shift
    return arrays
  end

  def order_right(arrays)
    arrays[:merged] << arrays[:right].shift
    return arrays
  end
end
