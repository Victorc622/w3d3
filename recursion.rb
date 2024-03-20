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
    return [] if num_2 < num_1
    return [1] if num_1 == 1

    result = range(num_1, num_1+1) + range(num_2 - 2, num_2 - 1)
        # [1, 2]        +          [3, 4]

    return result
end
p range(1, 5)