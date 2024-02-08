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
    even = 0
    odd = 0
    while num > 0
        digit = num % 10
        if digit % 2 == 0
            even += 1
        else
            odd += 1
        end
        num = num ÷ 10
    end
    return (even, odd)
end
