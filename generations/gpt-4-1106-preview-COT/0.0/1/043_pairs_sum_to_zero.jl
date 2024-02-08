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
    # Step 2: Check if the list has less than 2 elements
    if length(l) < 2
        return false
    end

    # Step 3: Create an empty set to store seen elements
    seen = Set{Int}()

    # Step 4: Iterate through each element in the list
    for x in l
        # Check if the additive inverse is in the set
        if -x in seen
            return true
        end
        # Add the current element to the set
        push!(seen, x)
    end

    # Step 5: Return false if no pair found
    return false
end
