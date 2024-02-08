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
    # Create a set to store the unique digits
    unique_digits = Set{Int}()

    # Iterate over the elements of xs
    for x in xs
        # Check if x has any even digits
        if any(isodd, digits(x))
            # If x has any even digits, add it to the set
            push!(unique_digits, x)
        end
    end

    # Return the sorted list of unique digits
    return sort(collect(unique_digits))
end
