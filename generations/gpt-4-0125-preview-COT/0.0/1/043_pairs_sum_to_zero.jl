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
    # Step 1: Initialize a Set
    seen = Set{Int}()
    
    # Step 2: Iterate Through the List
    for num in l
        # Step 2a: Check for Complement
        complement = -num
        
        # Step 2b: Check if Complement Exists
        if complement in seen
            return true
        end
        
        # Step 2c: Add Current Element to Set
        push!(seen, num)
    end
    
    # Step 3: Return False
    return false
end
