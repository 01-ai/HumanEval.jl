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
    # Convert the list to a set for fast membership checks
    s = Set(l)
    
    # Check if there are at least three elements in the list
    if length(l) < 3
        return false
    end
    
    # Iterate over all pairs of elements in the list
    for i in 1:length(l) - 1
        for j in i + 1:length(l)
            # Calculate the sum of the pair
            pair_sum = l[i] + l[j]
            
            # Check if the negative of the pair sum exists in the set
            # and is not equal to either of the elements in the pair
            if -pair_sum in s && (-pair_sum != l[i] || -pair_sum != l[j])
                return true
            end
        end
    end
    
    # No triple found that sums to zero
    return false
end

# Test cases
println(triples_sum_to_zero([1, 3, 5, 0])) # false
println(triples_sum_to_zero([1, 3, -2, 1])) # true
println(triples_sum_to_zero([1, 2, 3, 7])) # false
println(triples_sum_to_zero([2, 4, -5, 3, 9, 7])) # true
println(triples_sum_to_zero([1])) # false