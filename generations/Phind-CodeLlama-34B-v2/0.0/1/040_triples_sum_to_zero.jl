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
    if n < 3
        return false
    end
    sort!(l)
    for i = 1:n-2
        if i > 1 && l[i] == l[i-1]
            continue  # Skip same element to avoid duplicates
        end
        j, k = i+1, n
        while j < k
            s = l[i] + l[j] + l[k]
            if s < 0
                j += 1
            elseif s > 0
                k -= 1
            else
                return true
            end
        end
    end
    return false
end
