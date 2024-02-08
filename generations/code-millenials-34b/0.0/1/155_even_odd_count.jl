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
    num = abs(num)
    even_count = 0
    odd_count = 0
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

# Test cases
println(even_odd_count(-12))  # Expected output: (1, 1)
println(even_odd_count(123))  # Expected output: (1, 2)
println(even_odd_count(1234567890))  # Expected output: (5, 5)
println(even_odd_count(0))  # Expected output: (1, 0)