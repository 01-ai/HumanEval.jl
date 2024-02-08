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
    # Check if the input vector is empty
    if isempty(xs)
        throw(ArgumentError("Input vector cannot be empty."))
    end

    # Initialize the sum
    sum = 0

    # Iterate through the vector
    for (i, x) in enumerate(xs)
        # Check if the element is even and the index is odd
        if x % 2 == 0 && i % 2 == 1
            # Add the element to the sum
            sum += x
        end
    end

    return sum
end
