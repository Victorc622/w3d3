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

p return_number(30)

def exponentiation(base, number)
    return 1 if number == 0

    

end

exp(0,0) # (base, power) = 1
exp(0,1) #