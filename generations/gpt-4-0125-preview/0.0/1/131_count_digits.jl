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
    # Convert the integer to a string to iterate through its digits
    digits_str = string(n)
    
    # Initialize the product accumulator to 1
    product = 1
    
    # Flag to check if there's at least one odd digit
    has_odd = false
    
    # Iterate through each character in the string representation of n
    for digit_char in digits_str
        # Convert the character back to an integer
        digit = parse(Int, digit_char)
        
        # Check if the digit is odd
        if digit % 2 != 0
            # Multiply the product by the digit
            product *= digit
            # Set the flag to true since we found an odd digit
            has_odd = true
        end
    end
    
    # If no odd digit was found, return 0
    if !has_odd
        return 0
    end
    
    # Return the product of odd digits
    return product
end
