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



# Step-by-step outline:
# 1. Convert the input integer to a string to easily access each digit.
# 2. Initialize a variable to store the product of the odd digits.
# 3. Iterate over each character in the string.
# 4. Convert the character back to an integer.
# 5. Check if the integer is odd.
# 6. If it is, multiply the product variable by the integer.
# 7. After the loop, return the product variable.

# Julia code:

function count_digits(n::Int)::Int
    # Convert the input integer to a string
    str_n = string(n)
    
    # Initialize the product of the odd digits
    product = 1
    
    # Iterate over each character in the string
    for char in str_n
        # Convert the character back to an integer
        num = parse(Int, char)
        
        # Check if the integer is odd
        if num % 2 != 0
            # If it is, multiply the product variable by the integer
            product *= num
        end
    end
    
    # Return the product variable
    return product
end
