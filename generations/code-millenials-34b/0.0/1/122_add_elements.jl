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
    sum = 0
    for i in 1:k
        if xs[i] <= 99
            sum += xs[i]
        end
    end
    return sum
end

# Test cases
println(add_elements([111, 21, 3, 4000, 5, 6, 7, 8, 9], 4))  # sum of 21 + 3
println(add_elements([100, 200, 300, 400, 500, 600, 700, 800, 900], 4))  # sum of 0
println(add_elements([123, 456, 789, 1000, 2000, 3000, 4000, 5000, 6000], 9))  # sum of 123 + 456 + 789 + 1000 + 2000 + 3000 + 4000 + 5000 + 6000
println(add_elements([123, 456, 789, 1000, 2000, 3000, 4000, 5000, 6000], 1))  # sum of 123
println(add_elements([123, 456, 789, 1000, 2000, 3000, 4000, 5000, 6000], 5))  # sum of 123 + 456 + 789 + 1000 + 2000
