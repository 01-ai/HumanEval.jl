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
function even_odd_count(num::Int)::Tuple{Int,Int}
    n_even, n_odd = 0, 0

    while true
        x = num % 10
        if iseven(x)
            n_even += 1
        else
            n_odd += 1
        end
        num = num ÷ 10
        if num == 0
            break
        end
    end
    (n_even, n_odd)
end
