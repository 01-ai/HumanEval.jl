"""
    top_k(xs::Vector{Int}, k::Int)::Vector{Int}

Given an array `xs` of integers and a positive integer `k`, return a sorted list
of length `k` with the maximum `k` numbers in `xs` in the descending order.

!!! note

     1. The length of the array will be in the range of [1, 1000].
     2. The elements in the array will be in the range of [-1000, 1000].
     3. 0 <= k <= length(xs)

# Examples

```jldoctest
julia> top_k([-3, -4, 5], 3)
3-element Vector{Int64}:
  5
 -3
 -4

julia> top_k([4, -4, 4], 2)
2-element Vector{Int64}:
 4
 4

julia> top_k([-3, 2, 1, 2, -1, -2, 1], 1)
1-element Vector{Int64}:
 2
```
"""


function top_k(xs::Vector{Int}, k::Int)::Vector{Int}
    if k == 0
        return []
    end
    n = length(xs)
    if n <= k
        return sort(xs, rev=true)
    end
    top_k = sort(xs[1:k], rev=true)
    for i in (k+1):n
        if xs[i] > top_k[1]
            top_k[1] = xs[i]
            sort!(top_k, rev=true)
        end
    end
    return top_k
end

# Test cases
@assert top_k([-3, -4, 5], 3) == [5, -3, -4]
@assert top_k([4, -4, 4], 2) == [4, 4]
@assert top_k([-3, 2, 1, 2, -1, -2, 1], 1) == [2]
@assert top_k([1, 2, 3, 4, 5, 6, 7, 8, 9, 10], 5) == [10, 9, 8, 7, 6]
@assert top_k([1, 2, 3, 4, 5, 6, 7, 8, 9, 10], 0) == []
@assert top_k([1, 2, 3, 4, 5, 6, 7, 8, 9, 10], 10) == [10, 9, 8, 7, 6, 5, 4, 3, 2, 1]

