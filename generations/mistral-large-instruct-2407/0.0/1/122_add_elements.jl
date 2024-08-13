"""
    add_elements(xs::Vector{Int}, k::Int)::Int

Given a non-empty array of integers `xs` and an integer `k`, return the sum of
the elements with at most two digits from the first k elements of `xs`.

Constraints:

 1. 1 <= length(xs) <= 100
 2. 1 <= k <= length(xs)

# Examples

```jldoctest
julia> add_elements([111, 21, 3, 4000, 5, 6, 7, 8, 9], 4)  # sum of 21 + 3
24
```
"""

"""
    add_elements(xs::Vector{Int}, k::Int)::Int

Given a non-empty array of integers `xs` and an integer `k`, return the sum of
the elements with at most two digits from the first k elements of `xs`.

Constraints:

 1. 1 <= length(xs) <= 100
 2. 1 <= k <= length(xs)

# Examples

```jldoctest
julia> add_elements([111, 21, 3, 4000, 5, 6, 7, 8, 9], 4)  # sum of 21 + 3
24
```
"""
function add_elements(xs::Vector{Int}, k::Int)::Int
    # Ensure k is within the valid range
    if k < 1 || k > length(xs)
        throw(ArgumentError("k must be between 1 and the length of xs"))
    end

    # Initialize the sum
    sum_two_digits = 0

    # Iterate over the first k elements
    for i in 1:k
        if -99 <= xs[i] <= 99  # Check if the element has at most two digits
            sum_two_digits += xs[i]
        end
    end

    return sum_two_digits
end

# Example usage
println(add_elements([111, 21, 3, 4000, 5, 6, 7, 8, 9], 4))  # Output: 24
