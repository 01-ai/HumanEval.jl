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
    sum = 0

    # Iterate over the elements of the vector
    for i in 1:length(xs)
        # Check if the element is even and at an odd index
        if xs[i] % 2 == 0 && i % 2 == 1
            # Add the element to the sum
            sum += xs[i]
        end
    end

    # Return the sum
    return sum
end
