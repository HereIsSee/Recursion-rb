def merge_sort array
  if array.length == 1
    return array
  end
  split = split_array(array)
  merge(merge_sort(split[0]), merge_sort(split[1]))
end

#assume that both arrays are sorted 
#and then merge them according to that
#principle
def merge array1, array2
  new_array = []
  
  until array1.empty? && array2.empty?

    return new_array if array1[0].nil? && array2[0].nil?
    return new_array + array2 if array1[0].nil? && !array2[0].nil?
    return new_array + array1 if !array1[0].nil? && array2[0].nil?
    
    new_array.push(array1.shift) if array1[0].to_i <= array2[0].to_i
    new_array.push(array2.shift) if array1[0].to_i > array2[0].to_i
  end
  
  new_array
end

def split_array array
  return array.each_slice((array.length/2)).to_a if (array.length % 2) == 0
  array.each_slice((array.length/2+1)).to_a
end

p merge_sort [105, 79, 100, 110]