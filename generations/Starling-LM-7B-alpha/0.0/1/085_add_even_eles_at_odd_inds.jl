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
 function add_even_eles_at_odd_inds(xs::Vector{Int})
    even_sum = 0
    for i in 1:length(xs)
        if i % 2 == 1 && xs[i] % 2 == 0
            even_sum += xs[i]
        end
    end
    return even_sum
end
