require "byebug"
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

# p exponentiation(4 , 4)


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

def bsearch(arr, val)
  mid = arr.length / 2 
  l = arr[0...mid]
  r = arr[mid + 1..-1]
  return mid if arr[mid] == val
  return nil if arr.length <= 1
  if arr[mid] > val 
    bsearch(l ,val)
  elsif arr[mid] < val
    memod = bsearch(r, val)
    memod != nil ? memod + mid + 1 : nil
  end
end 

# p bsearch([1, 2, 3], 1) # => 0
# p bsearch([2, 3, 4, 5], 3) # => 1
# p bsearch([2, 4, 6, 8, 10], 6) # => 2
# p bsearch([1, 3, 4, 5, 9], 5) # => 3
# p bsearch([1, 2, 3, 4, 5, 6], 6) # => 5
# p bsearch([1, 2, 3, 4, 5, 6], 0) # => nil
# p bsearch([1, 2, 3, 4, 5, 7], 6) # => nil

 def merge_sort (arr)
  return arr if arr.length <= 1

  mid = arr.length / 2
  left = arr.take(mid)
  right = arr.drop(mid)

  merge(merge_sort(left), merge_sort(right))

  # if left.length && right.length == 1
  #   merge(left, right)
  # else
  #   merge_sort(left) 
  #   merge_sort(right)
  # end
 end 

 def merge(l,r)
  merged = []

  while !l.empty? && !r.empty?
    if l.first <= r.first
      merged << l.shift
    else  
      merged << r.shift
    end
  end
  merged + l + r
 end 

#  p merge_sort([38, 27, 43, 3, 9, 82, 10])

class Array
  def subsets
    return [[]] if empty?
    first = self.shift
    row = self.subsets
    output = [] 
    row.each do |ele|
      output << ele
      output 
    end 
    debugger
  end

end

p [1].subsets # => [[]]
# row = [[],   [1],    [2],    [1, 2]]
# next = [[3], [1, 3], [2, 3], [1, 2, 3]]
# row + next