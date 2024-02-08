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
    # Initialize a set to store the elements of the list
    s = Set(l)

    # Iterate over the list
    for i in l
        # If the negative of the current element is in the set, return true
        if -i in s
            return true
        end
    end

    # If no pair sums to zero, return false
    return false
end
