def bubble_sort(arr)
    
=begin
Loop through the array
    check element at index i and i+1
    if arr[i] > arr[i+1] then we swap
    else we do nothing
=end
  k = arr.size
  count = 0
  k.times do |i|
    n = 0
    while n < (arr.size - 1 -i)
      count +=1
      if arr[n] > arr[n+1]
        arr[n],arr[n+1] = arr[n+1], arr[n] 
      end
      n+=1
        
    end
  end
  arr
end

bubble_sort([9,7,6,5,4,3,2,1])

def bubble_sort_by(arr)
  k = arr.size
  count = 0
  k.times do |i|
    n = 0
    while n < (arr.size - 1 -i)
      count +=1
      if block_given?
        if yield(arr[n],arr[n+1]).positive?
          arr[n],arr[n+1] = arr[n+1], arr[n] 
        end 
      end
      n+=1
    end
  end
  arr
end

bubble_sort_by(["hi","hello","hfffffey", "hello"]){|x,y|x.length - y.length}