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
    # Initialize the sum of even elements at odd indices to zero
    even_sum_at_odd_inds = 0

    # Iterate over the list and add the even elements at odd indices to the sum
    for i in 1:length(xs)
        if xs[i] % 2 == 0 && (i % 2 == 1)
            even_sum_at_odd_inds += xs[i]
        end
    end

    # Return the sum
    return even_sum_at_odd_inds
end
