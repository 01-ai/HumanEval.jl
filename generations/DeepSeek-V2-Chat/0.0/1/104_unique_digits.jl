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
    # Helper function to check if a number has any even digits
    function has_even_digit(n::Int)::Bool
        for digit in string(n)
            if digit in ('0', '2', '4', '6', '8')
                return true
            end
        end
        return false
    end

    # Filter out numbers with even digits and sort the remaining numbers
    result = filter(x -> !has_even_digit(x), xs)
    return sort(result)
end
