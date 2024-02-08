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
    # Step 1: Filter elements without any even digit
    filtered_xs = filter(x -> all(d -> parse(Int, d) % 2 != 0, string(x)), xs)
    
    # Step 2: Sort the filtered list
    sorted_xs = sort(filtered_xs)
    
    # Step 3: Return the sorted list
    return sorted_xs
end

# Examples
println(unique_digits([15, 33, 1422, 1]))  # Expected: [1, 15, 33]
println(unique_digits([152, 313, 1422, 10]))  # Expected: [313]
