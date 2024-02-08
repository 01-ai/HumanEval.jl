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
    # Check if the list has less than 3 elements
    if length(l) < 3
        return false
    end

    # Sort the list in ascending order
    sort!(l)

    # Iterate through the list
    for i in 1:length(l) - 2
        # Initialize the left and right pointers
        left = i + 1
        right = length(l)

        # While the left pointer is less than the right pointer
        while left < right
            # Calculate the sum of the current triple
            triple_sum = l[i] + l[left] + l[right]

            # If the sum is zero, return true
            if triple_sum == 0
                return true
            end

            # If the sum is greater than zero, move the right pointer to the left
            if triple_sum > 0
                right -= 1
            # Otherwise, move the left pointer to the right
            else
                left += 1
            end
        end
    end

    # If no triple sum to zero is found, return false
    return false
end
