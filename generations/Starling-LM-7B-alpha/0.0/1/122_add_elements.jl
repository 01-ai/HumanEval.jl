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
    # Check if the constraints are satisfied
    if length(xs) < 1 || length(xs) > 100 || k < 1 || k > length(xs)
        error("Invalid input. Please ensure that the length of xs is between 1 and 100, and k is between 1 and the length of xs.")
    end

    # Calculate the sum of the first k elements with at most two digits
    sum_two_digits = 0
    for i in 1:k
        if length(string(xs[i])) <= 2
            sum_two_digits += xs[i]
        end
    end

    return sum_two_digits
end
