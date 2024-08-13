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
    even_count = 0
    odd_count = 0
    
    # Convert the number to its absolute value
    num = abs(num)
    
    # Handle the case when num is 0
    if num == 0
        return (1, 0)
    end
    
    while num > 0
        digit = num % 10
        if digit % 2 == 0
            even_count += 1
        else
            odd_count += 1
        end
        num ÷= 10
    end
    
    return (even_count, odd_count)
end