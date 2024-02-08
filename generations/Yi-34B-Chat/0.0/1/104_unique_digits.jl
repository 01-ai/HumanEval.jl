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
    # Initialize an empty vector to store the unique digits
    unique_digits_list = Vector{Int}()

    # Loop through the list of integers
    for x in xs
        # Check if the integer has any even digit
        if all(d -> d % 2 != 0, digits(x))
            # If not, add it to the unique digits list
            push!(unique_digits_list, x)
        end
    end

    # Sort the unique digits list in increasing order
    sort!(unique_digits_list)

    # Return the sorted list
    return unique_digits_list
end
