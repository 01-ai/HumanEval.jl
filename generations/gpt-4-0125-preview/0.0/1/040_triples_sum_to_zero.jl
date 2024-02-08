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
    # If there are less than 3 elements, it's impossible to find a triple that sums to zero.
    if n < 3
        return false
    end

    # Iterate through the list with three nested loops to check every combination of three elements.
    for i in 1:n-2
        for j in i+1:n-1
            for k in j+1:n
                if l[i] + l[j] + l[k] == 0
                    return true
                end
            end
        end
    end

    # If no combination sums to zero, return false.
    return false
end
