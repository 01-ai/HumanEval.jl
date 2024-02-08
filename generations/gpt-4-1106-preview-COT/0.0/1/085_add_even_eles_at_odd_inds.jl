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
    sum = 0
    for (index, value) in enumerate(xs)
        if index % 2 == 1 && value % 2 == 0
            sum += value
        end
    end
    return sum
end
println(add_even_eles_at_odd_inds([4, 2, 6, 7]))  # Should output 10
