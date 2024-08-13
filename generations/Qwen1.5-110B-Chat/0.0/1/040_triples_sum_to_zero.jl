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
    
    seen = Set{Int}()
    for i in 1:(n-2)
        for j in (i+1):(n-1)
            complement = -(l[i] + l[j])
            if complement in seen
                return true
            end
            push!(seen, l[j])
        end
        # Clear the set for the next iteration to avoid unnecessary comparisons
        empty!(seen)
        push!(seen, l[i])
    end
    false
end
