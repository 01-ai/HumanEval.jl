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
function add_even_eles_at_odd_inds(xs::Vector{Int})::Int
    # Step 1: Initialize sum variable
    sum_even_at_odd = 0
    
    # Step 2 & 3: Iterate over elements at odd indices and sum even ones
    for i in 2:2:length(xs)
        if xs[i] % 2 == 0
            sum_even_at_odd += xs[i]
        end
    end
    
    # Step 4: Return the sum
    return sum_even_at_odd
end
