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
    for i in 1:2:length(xs)  # Start at 1 and increment by 2 to hit odd indices
        if xs[i] % 2 == 0    # Check if the element is even
            sum += xs[i]
        end
    end
    return sum
end
