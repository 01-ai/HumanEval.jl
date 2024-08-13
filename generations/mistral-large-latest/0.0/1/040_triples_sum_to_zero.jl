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
    sort!(l)
    for i in 1:length(l)-2
        left = i + 1
        right = length(l)
        while left < right
            sum = l[i] + l[left] + l[right]
            if sum == 0
                # Found a triplet that sums to zero
                return true
            elseif sum < 0
                left += 1
            else
                right -= 1
            end
        end
    end
    # No triplet found
    return false
end
