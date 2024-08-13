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
    # Create a set to store elements
    seen = Set{Int}()
    
    # Iterate through each element in the list
    for num in l
        # Check if the negative of the current number exists in the set
        if -num in seen
            return true
        end
        # Add the current number to the set
        push!(seen, num)
    end
    
    # If no pairs found that sum to zero
    return false
end
