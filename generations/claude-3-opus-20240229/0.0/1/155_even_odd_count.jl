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
    num_str = string(abs(num))
    even_count = count(isodd, parse.(Int, collect(num_str)))
    odd_count = length(num_str) - even_count
    return (even_count, odd_count)
end
