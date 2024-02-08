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
    # Create a set to store the numbers we've seen so far
    seen = Set{Int}()

    # Iterate over the list
    for num in l
        # If the negation of the current number is in the set, we've found a pair that sums to zero
        if -num in seen
            return true
        end
        # Otherwise, add the current number to the set
        pushfirst(seen, num)
    end

    # If we've gone through the entire list and haven't found a pair that sums to zero, return false
    return false
end
