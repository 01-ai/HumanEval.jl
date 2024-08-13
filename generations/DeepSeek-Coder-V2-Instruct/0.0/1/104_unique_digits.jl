"""
    unique_digits(xs::Vector{Int})::Vector{Int}

Given a list of positive integers `xs`. Return a sorted list of all
elements that hasn't any even digit.

!!! note

    Returned list should be sorted in increasing order.

# Examples

```jldoctest
julia> unique_digits([15, 33, 1422, 1])
3-element Vector{Int64}:
  1
 15
 33

julia> unique_digits([152, 313, 1422, 10])
1-element Vector{Int64}:
 313
```
"""
function unique_digits(xs::Vector{Int})::Vector{Int}
    function has_even_digit(n::Int)::Bool
        while n > 0
            digit = n % 10
            if digit % 2 == 0
                return true
            end
            n = div(n, 10)
        end
        return false
    end

    filtered_xs = filter(x -> !has_even_digit(x), xs)
    return sort(unique(filtered_xs))
end
