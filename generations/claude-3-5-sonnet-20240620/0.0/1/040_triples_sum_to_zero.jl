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
    n = length(l)
    
    # We need at least 3 elements to form a triple
    if n < 3
        return false
    end
    
    # Sort the array to use two-pointer technique
    sort!(l)
    
    for i in 1:n-2
        left = i + 1
        right = n
        
        while left < right
            current_sum = l[i] + l[left] + l[right]
            
            if current_sum == 0
                return true
            elseif current_sum < 0
                left += 1
            else
                right -= 1
            end
        end
    end
    
    return false
end
