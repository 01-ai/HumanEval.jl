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
    # Sort the list in ascending order
    sort!(l)
    
    # Iterate over the list
    for i in 1:length(l)-2
        # Skip duplicates to ensure distinct elements
        if i > 1 && l[i] == l[i-1]
            continue
        end
        
        # Initialize two pointers, one at the next element and one at the end
        left, right = i+1, length(l)
        
        while left < right
            # Calculate the sum of the three elements
            sum = l[i] + l[left] + l[right]
            
            # If the sum is zero, return true
            if sum == 0
                return true
            # If the sum is less than zero, move the left pointer to the right
            elseif sum < 0
                left += 1
            # If the sum is greater than zero, move the right pointer to the left
            else
                right -= 1
            end
        end
    end
    
    # If no triplets sum to zero, return false
    return false
end
println(triples_sum_to_zero([1, 3, 5, 0]))  # false
println(triples_sum_to_zero([1, 3, -2, 1]))  # true
println(triples_sum_to_zero([1, 2, 3, 7]))  # false
println(triples_sum_to_zero([2, 4, -5, 3, 9, 7]))  # true
println(triples_sum_to_zero([1]))  # false
