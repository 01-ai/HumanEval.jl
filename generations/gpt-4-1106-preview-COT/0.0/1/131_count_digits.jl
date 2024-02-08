"""
    count_digits(n::Int)::Int

Given a positive integer n, return the product of the odd digits. Return 0 if
all digits are even.

# Example

```jldoctest
julia> count_digits(1)
1

julia> count_digits(4)
0

julia> count_digits(235)
15
```
"""
function count_digits(n::Int)::Int
    # Step 1: Initialize the product of odd digits
    product = 1
    
    # Step 2: Check if n is positive
    if n <= 0
        throw(ArgumentError("Input must be a positive integer"))
    end
    
    # Step 3: Convert the integer to a string
    n_str = string(n)
    
    # Step 4: Iterate over each character in the string
    for digit_char in n_str
        # Step 5: Convert character to integer and check if it's odd
        digit = parse(Int, digit_char)
        if digit % 2 != 0
            # Step 6: Multiply the odd digit with the product
            product *= digit
        end
    end
    
    # Step 7: Check if the product is still 1 (no odd digits found)
    if product == 1
        return 0
    end
    
    # Step 8: Return the product of odd digits
    return product
end
println(count_digits(1))  # Should return 1
println(count_digits(4))  # Should return 0
println(count_digits(235)) # Should return 15
