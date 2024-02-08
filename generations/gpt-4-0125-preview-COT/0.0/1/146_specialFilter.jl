"""
    specialFilter(nums::Vector{Int})::Int

Write a function that takes an array of numbers as input and returns the number
of elements in the array that are greater than 10 and both first and last digits
of a number are odd (1, 3, 5, 7, 9).

# Example

```jldoctest
julia> specialFilter([15, -73, 14, -15])
1

julia> specialFilter([33, -2, -3, 45, 21, 109])
2
```
"""
function specialFilter(nums::Vector{Int})::Int
    # Step 1: Initialize a counter
    count = 0
    
    # Step 2: Iterate through the array
    for num in nums
        # Step 3: Check if the number is greater than 10
        if num > 10
            # Step 4: Extract the first and last digits
            num_str = string(num)
            first_digit = parse(Int, num_str[1])
            last_digit = parse(Int, num_str[end])
            
            # Step 5: Check if the first and last digits are odd
            if first_digit % 2 != 0 && last_digit % 2 != 0
                # Increment the counter
                count += 1
            end
        end
    end
    
    # Step 6: Return the counter
    return count
end
