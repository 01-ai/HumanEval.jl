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
    # Base case: if the list has less than 3 elements, there is no way to
    # form a triple summing to zero.
    if length(l) < 3
        return false
    end

    # Sort the list to ensure a stable and deterministic order of
    # comparison.
    l = sort(l)

    # Iterate over the list, looking for three elements that sum to zero.
    for i in 1:length(l)
        if l[i] == 0
            # If we find an element equal to zero, we can skip the rest
            # of the list, as it would not contain a different triple
            # summing to zero.
            return true
        end

        # Look for two elements that sum to the negative of the current
        # element.
        j = i + 1
        k = length(l)
        while j < k
            if l[i] + l[j] + l[k] == 0
                # If we find such a triple, return true.
                return true
            end
            # Move to the next element in the list.
            if l[j] + l[k] > 0
                k -= 1
            else
                j += 1
            end
        end
    end

    # If we reach this point, we have checked all possible triples and
    # none of them sum to zero.
    return false
end
