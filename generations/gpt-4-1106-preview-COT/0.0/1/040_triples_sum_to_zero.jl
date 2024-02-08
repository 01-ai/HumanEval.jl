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
    # Step 2: Early return if less than 3 elements
    if length(l) < 3
        return false
    end
    
    # Step 3: Sort the list
    sort!(l)
    
    # Step 4: Iterate through the list
    for i in 1:length(l)-2
        # Initialize two pointers
        left = i + 1
        right = length(l)
        
        while left < right
            # Calculate the sum of the current triple
            current_sum = l[i] + l[left] + l[right]
            
            # Step 4c: Check if the sum is zero
            if current_sum == 0
                return true
            # Step 4d: Move the left pointer to the right
            elseif current_sum < 0
                left += 1
            # Step 4e: Move the right pointer to the left
            else
                right -= 1
            end
        end
    end
    
    # Step 5: Return false if no triple found
    return false
end
