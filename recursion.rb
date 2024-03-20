def sum_recursive(arr)
    result = []

    (1...5).each { |num| result << num }
    return result
end

# def range(num_1, num_2)
#     result = []
#     return [] if num_2 <= num_1
#     current_num = num_1

#     while current_num < num_2
#         result << current_num
#         current_num += 1
#     end

#     return result
# end

def range(num_1, num_2)
   return [] if num_2 <= num_1
   if num_2 - num_1 == 1 
    return [num_1] # 1
   else
    result = range(num_1, num_1 + 1) + range(num_1 + 1, num_2) # (num_1 num_1 + 1) num_1..num_2
    return result
   end
end
# p range(1, 5)

# def return_number(a)
#     ((a / 2)**2) * (65 - (a / 2))
# end

def return_number(a)
    childs_age = a / 2
    years_until_retirement = 65 - childs_age
    money_in_bank = childs_age ** 2
    money_at_retirement = money_in_bank * years_until_retirement
    return money_at_retirement
end

# p return_number(30)

# recursion 2
# exp(b, 0) = 1
# exp(b, 1) = b
# exp(b, n) = exp(b, n / 2) ** 2             [for even n] n = power
# exp(b, n) = b * (exp(b, (n - 1) / 2) ** 2) [for odd n]

def exponent(base, power)
    return 1 if power == 0
    return base if power == 1
    smaller_power = power - 1
    if power.even?
      exponent(base, power / 2) ** 2
    else
       base * (exponent(base, smaller_power) / 2) ** 2
    end
end


# exp(0,0) # (base, power) = 1
# exp(0,1) # = 0
# exp(1,0) # = 1
# exp(1,1) # = 1
# exp(1,2) # = 1
# exp(2,0) # = 1
# exp(2,1) # = 2
# exp(2,2) # = 4

robot_parts = [
  ["nuts", "bolts", "washers"],
  ["capacitors", "resistors", "inductors"]
]

robot_parts_copy = robot_parts.dup

# shouldn't modify robot_parts
robot_parts_copy[1] << "LEDs"
# but it does
robot_parts[1] # => ["capacitors", "resistors", "inductors", "LEDs"]

def deep_dup(arr)
  array = []
  arr.each do |ele|
    if !ele.is_a?(Array)
        array << ele.dup
    else
       array << deep_dup(ele)
    end
  end
  return array
end

# 0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89
def fibonacci(n)                # n = 8
  return [] if n <= 0
  return [0] if n == 1
  return [0, 1] if n == 2

  fib = fibonacci(n - 1)        # fib = fibonacci(7) => [0, 1, 1, 2, 3, 5, 8]
  fib << fib[-1] + fib[-2]      # fib << 8 + 5 = 13
end

def iterative_fib(n)
    i = 2
    fib = [0, 1]
    while i < n
        fib << fib[i-1] + fib[i-2]
        i += 1
    end
    return fib
end

# p iterative_fib(8) 

def search(array, target)
    array.each_with_index do |el, idx|
        if el == target
            return idx
        end
    end
    return nil
end    

def bsearch(array, target)
    return nil if array.empty?
    return 0 if array.length == 1 && array.include?(target)

    mid_index = array.length/2
    first_half = array[0...mid_index]
    second_half = array[mid_index + 1..-1]
    mid_num = array[mid_index]

    if mid_num == target
        return mid_index
    elsif mid_num > target
        bsearch(first_half, target)
    elsif mid_num < target
        bsearch(second_half, target)
    end       
end

p bsearch([1, 2], 1)
p bsearch([2, 3, 4, 5], 3)

p bsearch([1, 2, 3], 1) # => 0
p bsearch([2, 3, 4, 5], 3) # => 1
p bsearch([2, 4, 6, 8, 10], 6) # => 2
p bsearch([1, 3, 4, 5, 9], 5) # => 3
p bsearch([1, 2, 3, 4, 5, 6], 6) # => 5
p bsearch([1, 2, 3, 4, 5, 6], 0) # => nil
p bsearch([1, 2, 3, 4, 5, 7], 6) # => nil
