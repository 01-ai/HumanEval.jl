"""
    even_odd_count(num::Int)::Tuple{Int, Int}

Given an integer, return a tuple that has the number of even and odd digits
respectively.

# Examples

```jldoctest
julia> even_odd_count(-12)
(1, 1)

julia> even_odd_count(123)
(1, 2)
```
"""
function even_odd_count(num::Int)::Tuple{Int, Int}
    # Convert the number to its absolute value to handle negative numbers
    num = abs(num)
    
    # Initialize counters for even and odd digits
    even_count = 0
    odd_count = 0
    
    # Iterate through each digit of the number
    while num > 0
        digit = num % 10
        if digit % 2 == 0
            even_count += 1
        else
            odd_count += 1
        end
        num = div(num, 10)
    end
    
    return (even_count, odd_count)
end
