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
    unique_elements = unique(l)
    num_elements = length(unique_elements)

    if num_elements < 3
        return false
    end

    for i in 1:(num_elements-2)
        for j in (i+1):(num_elements-1)
            for k in (j+1):num_elements
                if unique_elements[i] + unique_elements[j] + unique_elements[k] == 0
                    return true
                end
            end
        end
    end

    return false
end