def merge_sort(array)
  return array if array.length <= 1

  middle = array.length / 2

  left = merge_sort(array[0...middle])
  right = merge_sort(array[middle...])

  sorted = []

  while !left.empty? && !right.empty?
    if left[0] < right[0]
      sorted << left.shift
    else
      sorted << right.shift
    end
  end

  sorted + left + right
end

p merge_sort([3, 2, 1, 13, 8, 5, 0, 1])