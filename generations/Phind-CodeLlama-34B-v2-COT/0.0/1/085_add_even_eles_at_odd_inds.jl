"""
    add_even_eles_at_odd_inds(xs::Vector{Int})::Int

Given a non-empty list of integers `xs`. add the even elements that are at odd
indices..

# Examples:

```jldoctest
julia> add_even_eles_at_odd_inds([4, 2, 6, 7])
10
```
"""



# Outline:
# 1. Initialize a variable `sum` to 0. This will hold the sum of the even elements at odd indices.
# 2. Iterate over the indices of `xs` with a step of 2 (since we're only interested in odd indices).
# 3. For each index, check if the element at that index is even.
# 4. If it is, add it to `sum`.
# 5. After the loop, return `sum`.

# Code:

function add_even_eles_at_odd_inds(xs::Vector{Int})::Int
    sum = 0
    for i in 1:2:length(xs)
        if xs[i] % 2 == 0
            sum += xs[i]
        end
    end
    return sum
end
