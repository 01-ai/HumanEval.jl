"""
    pairs_sum_to_zero(l::Vector{Int})::Bool

`pairs_sum_to_zero` takes a list of integers as an input. It returns `true` if
there are two distinct elements in the list that sum to zero, and false
otherwise.

```jldoctest
julia> pairs_sum_to_zero([1, 3, 5, 0])
false

julia> pairs_sum_to_zero([1, 3, -2, 1])
false

julia> pairs_sum_to_zero([1, 2, 3, 7])
false

julia> pairs_sum_to_zero([2, 4, -5, 3, 5, 7])
true

julia> pairs_sum_to_zero([1])
false
```
"""
function pairs_sum_to_zero(l::Vector{Int})::Bool
    seen = Set{Int}()
    for num in l
        if -num in seen
            return true
        end
        push_if_not_exists(seen, num)
    end
    return false
end

function push_if_not_exists(s::Set{Int}, num::Int)
    if num != 0 && !(num in s)
        push_if_not_exists(s, num)
    end
end