"""
    pairs_sum_to_zero(l::Vector{Int})::Bool

`pairs_sum_to_zero` takes a list of integers as an input. It returns `true` if
there are two distinct elements in the list that sum to zero, and false
otherwise.

```jldoctest
julia> pairs_sum_to_zero([1, 3, 5, 0])
false

julia> pairs_sum_to_zero([1, 3, -2, 1])
false

julia> pairs_sum_to_zero([1, 2, 3, 7])
false

julia> pairs_sum_to_zero([2, 4, -5, 3, 5, 7])
true

julia> pairs_sum_to_zero([1])
false
```
"""
function pairs_sum_to_zero(l::Vector{Int})::Bool
    # Create a set to store the elements of the list for fast lookup
    seen = Set{Int}()

    # Iterate over each element in the list
    for x in l
        # Check if its negative counterpart has already been seen
        # Note: We check if x ≠ 0 to avoid the case where a single 0 could be mistakenly counted as a pair
        if x ≠ 0 && -x in seen
            return true
        else
            # Add the element to the set of seen elements
            push!(seen, x)
        end
    end

    # If no pair summing to zero is found, return false
    return false
end

# Example usage and tests
julia> pairs_sum_to_zero([1, 3, 5, 0])
false

julia> pairs_sum_to_zero([1, 3, -2, 1])
false

julia> pairs_sum_to_zero([1, 2, 3, 7])
false

julia> pairs_sum_to_zero([2, 4, -5, 3, 5, 7])
true

julia> pairs_sum_to_zero([1])
false
