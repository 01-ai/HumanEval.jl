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
        if !any(isodd(parse(Int, d)) for d in string(x))
            push!(unique_nums, x)
        end
    end
    sort!(unique_nums)
    return unique_nums
end

# Test cases
@assert unique_digits([15, 33, 1422, 1]) == [1, 15, 33]
@assert unique_digits([152, 313, 1422, 10]) == [313]
@assert unique_digits([11, 22, 33, 44, 55, 66, 77, 88, 99, 100]) == [11, 33, 55, 77, 99]
@assert unique_digits([1000, 2000, 3000, 4000, 5000]) == []
@assert unique_digits([1001, 2002, 3003, 4004, 5005]) == [1001, 2002, 3003, 4004, 5005]
@assert unique_digits([1000000, 2000000, 3000000, 4000000, 5000000]) == [1000000, 3000000, 5000000]
