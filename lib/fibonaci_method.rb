def fibs num
  array = Array.new
  if array.length == 0 && num > 0
    array.push 0
    num -= 1
  end
  if array.length == 1 && num > 0
    array.push 1
    num -= 1
  end
  num.times do
    array.push(array[-1]+array[-2])
  end
  array
end

def fibs_recursive num, array = []
  return array if num <= 0
  if array.length == 0 && num > 0
    return fibs_recursive(num-1, array.push(0))
  end

  if array.length == 1 && num > 0
    return fibs_recursive(num-1, array.push(1))
  end
  
  fibs_recursive(num-1, array.push(array[-1]+array[-2]))
end

