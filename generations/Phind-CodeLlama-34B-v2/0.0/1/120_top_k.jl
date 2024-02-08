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
    # Check if k is greater than the length of the array
    if k > length(xs)
        k = length(xs)
    end

    # Initialize a priority queue with the first k elements
    pq = PriorityQueue{Int, Int}()
    for i in 1:k
        enqueue!(pq, xs[i], i)
    end

    # Iterate over the rest of the array
    for i in k+1:length(xs)
        if xs[i] > first(pq)[1]
            dequeue!(pq)
            enqueue!(pq, xs[i], i)
        end
    end

    # Return the top k elements in descending order
    return [x for (x, _) in reverse(collect(pq))]
end
