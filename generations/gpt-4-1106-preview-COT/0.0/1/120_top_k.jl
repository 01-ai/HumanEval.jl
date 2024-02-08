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
    # Step 1: Check if k is zero
    if k == 0
        return Int[]
    end
    
    # Step 2: Sort the vector in descending order
    sorted_xs = sort(xs, rev=true)
    
    # Step 3: Slice the first k elements
    top_k_elements = sorted_xs[1:k]
    
    # Step 4: Return the top k elements
    return top_k_elements
end

# Examples
println(top_k([-3, -4, 5], 3)) # Output: [5, -3, -4]
println(top_k([4, -4, 4], 2))  # Output: [4, 4]
println(top_k([-3, 2, 1, 2, -1, -2, 1], 1)) # Output: [2]
