# frozen_string_literal: true

def bubble_sort(arr)
  k = arr.size
  count = 0
  k.times do |i|
    n = 0
    while n < (arr.size - 1 - i)
      count += 1
      arr[n], arr[n + 1] = arr[n + 1], arr[n] if arr[n] > arr[n + 1]
      n += 1
    end
  end
  arr
end

bubble_sort([9, 7, 6, 5, 4, 3, 2, 1])

def bubble_sort_by(arr)
  k = arr.size
  count = 0
  k.times do |i|
    n = 0
    while n < (arr.size - 1 - i)
      count += 1
      if block_given?
        arr[n], arr[n + 1] = arr[n + 1], arr[n] if yield(arr[n], arr[n + 1]).positive?
      end
      n += 1
    end
  end
  arr
end

bubble_sort_by(%w[hi hello hey]) { |x, y| x.length - y.length }
