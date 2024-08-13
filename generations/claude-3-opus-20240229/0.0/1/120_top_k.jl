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
    # Create a min-heap of size k
    heap = Vector{Int}()
    
    for x in xs
        if length(heap) < k
            push!(heap, x)
            if length(heap) == k
                heapify!(heap, 1, k, Base.Order.Reverse)
            end
        elseif x > heap[1]
            heap[1] = x
            heapify!(heap, 1, k, Base.Order.Reverse)
        end
    end
    
    sort!(heap, rev=true)
    return heap
end
