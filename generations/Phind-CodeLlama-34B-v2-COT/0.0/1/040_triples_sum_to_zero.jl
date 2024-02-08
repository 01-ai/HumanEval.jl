"""
    triples_sum_to_zero(l::Vector{Int})::Bool

Takes a list of integers as an input. It returns `true` if there are three
distinct elements in the list that sum to zero, and `false` otherwise.

# Examples

```jldoctest
julia> triples_sum_to_zero([1, 3, 5, 0])
false

julia> triples_sum_to_zero([1, 3, -2, 1])
true

julia> triples_sum_to_zero([1, 2, 3, 7])
false

julia> triples_sum_to_zero([2, 4, -5, 3, 9, 7])
true

julia> triples_sum_to_zero([1])
false
```
"""
function triples_sum_to_zero(l::Vector{Int})::Bool
    length(l) < 3 && return false  # Not enough elements
    l = Set(l)  # Remove duplicates
    for a in l, b in l, c in l  # Iterate over each possible triple
        a == b == c && continue  # Skip if all three are the same
        a + b + c == 0 && return true  # Return true if sum is zero
    end
    return false  # No triple sums to zero
end
