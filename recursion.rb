# class Recursion

def iter_range(start, en)
  arr = []
  (start..en).each { |n| arr << n}
  arr
end

def recur_range(start, en)
  return [] if en < start
  [start].concat(recur_range(start + 1, en))
end

# p recur_range(1, 5)

def exponentiation(base, expon)
  return 1 if expon == 0
  return base if expon == 1
  half = expon / 2
  if expon.even?
    exponentiation(base, half) ** 2
  else
    
    base * (exponentiation(base, (expon - 1) / 2) ** 2)
  end
end

p exponentiation(4 , 4)


def deeper_dup(arr)
  # return [] if arr == []
  # return [arr[0]].dup unless arr[0].is_a?(Array)
  # arr[0].concat(deeper_dup(arr[1..-1]))

#   dupest = []
#   if arr[-1] is_a? (Array)
#     deeper_dup(arr[-1])
#   else
#     dupest << arr
#   end
# end

# arr.map {|ele| ele.is_a?(Array) ? deeper_dup(ele) : ele}
end 


# robot_parts = [
#   ["nuts", "bolts", "washers"],
#   ["capacitors", "resistors", "inductors"]
# ]

# robot_parts_copy = deeper_dup(robot_parts)
# p robot_parts_copy


# end 

def Fibonacci(n)
  return [1] if n == 0 
  return [1,1] if n == 1

  fibs = (Fibonacci(n-1))
  fibs << fibs[-2] + fibs[-1]
end 

# p Fibonacci(6)

def BinarySearch(arr, val)
  middle = arr / 2 
  

end 