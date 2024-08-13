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
    # Initialize the sum to 0
    sum_even_at_odd = 0
    
    # Iterate over each element of the list
    for (index, value) in enumerate(xs)
        # If the index is odd and the value is even, add it to the sum
        if isodd(index) && iseven(value)
            sum_even_at_odd += value
        end
    end
    
    # Return the sum of even elements at odd indices
    return sum_even_at_odd
end

# Example usage:
# julia> add_even_eles_at_odd_inds([4, 2, 6, 7])
# 10