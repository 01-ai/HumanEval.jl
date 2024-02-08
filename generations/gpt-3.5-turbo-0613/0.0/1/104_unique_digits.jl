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
    unique_nums = Int[]
    for x in xs
        has_even_digit = false
        for digit in digits(x)
            if digit % 2 == 0
                has_even_digit = true
                break
            end
        end
        if !has_even_digit
            push!(unique_nums, x)
        end
    end
    return sort(unique_nums)
end