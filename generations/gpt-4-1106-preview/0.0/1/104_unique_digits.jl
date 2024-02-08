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
    # Filter the list to include only numbers without even digits
    filtered_xs = filter(x -> all(d -> d % 2 != 0, digits(x)), xs)
    
    # Sort the filtered list in increasing order
    sort(filtered_xs)
end

# Examples
println(unique_digits([15, 33, 1422, 1]))  # Output: [1, 15, 33]
println(unique_digits([152, 313, 1422, 10]))  # Output: [313]
