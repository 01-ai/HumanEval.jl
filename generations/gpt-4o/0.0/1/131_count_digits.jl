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
    # Convert the integer to a string to easily iterate over each digit
    digits_str = string(n)
    
    # Initialize the product to 1
    product = 1
    has_odd_digit = false
    
    # Iterate over each character in the string
    for char in digits_str
        digit = parse(Int, char)
        if isodd(digit)
            product *= digit
            has_odd_digit = true
        end
    end
    
    # If no odd digit was found, return 0
    if !has_odd_digit
        return 0
    end
    
    return product
end
println(count_digits(1))   # Output: 1
println(count_digits(4))   # Output: 0
println(count_digits(235)) # Output: 15
