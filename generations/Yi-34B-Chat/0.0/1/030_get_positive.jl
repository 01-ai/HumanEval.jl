"""
    get_positive(xs::Vector)

Return only positive numbers in the list.

# Examples

```jldoctest
julia> get_positive([-1, 2, -4, 5, 6])
3-element Vector{Int64}:
 2
 5
 6

julia> get_positive([5, 3, -5, 2, -3, 3, 9, 0, 123, 1, -10])
7-element Vector{Int64}:
   5
   3
   2
   3
   9
 123
   1
```
"""
function get_positive(xs::Vector)
    # Initialize an empty vector to store positive numbers
    positives = Vector{Int64}()

    # Iterate over the list and add positive numbers to the new vector
    for x in xs
        if x > 0
            push!(positives, x)
        end
    end

    # Return the new vector with only positive numbers
    return positives
end
