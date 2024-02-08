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
    # Create a set to store the elements of the list
    elements = Set{Int}()

    # Iterate through the list
    for num in l
        # If the negative of the current element is in the set, return true
        if -num in elements
            return true
        end
        # Otherwise, add the current element to the set
        push!(elements, num)
    end

    # If no pair of elements sum to zero, return false
    return false
end
