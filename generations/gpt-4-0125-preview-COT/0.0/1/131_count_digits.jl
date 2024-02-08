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
    # Step 1: Initialize the product variable
    product = 1
    
    # Step 2: Check if n is 0
    if n == 0
        return 0
    end
    
    # Variable to track if at least one odd digit is found
    found_odd = false
    
    # Step 3: Loop through each digit
    while n > 0
        digit = n % 10  # Get the last digit
        if digit % 2 != 0  # Check if the digit is odd
            product *= digit  # Multiply the odd digit with the product
            found_odd = true
        end
        n = n ÷ 10  # Remove the last digit
    end
    
    # Step 4: Check the value of product
    if !found_odd
        return 0  # Return 0 if no odd digit was found
    end
    
    # Step 5: Return the result
    return product
end
