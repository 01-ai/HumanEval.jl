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
    sum(filter(iseven, xs[begin:2:end]))
end