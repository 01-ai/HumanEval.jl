"""
    sum_product(numbers::Vector{Int})::Tuple{Int, Int}

For a given list of integers, return a tuple consisting of a sum and a product
of all the integers in a list. Empty sum should be equal to 0 and empty product
should be equal to 1.

# Examples

```jldoctest
julia> sum_product(Int[])
(0, 1)

julia> sum_product([1, 2, 3, 4])
(10, 24)
```
"""
function sum_product(numbers::Vector{Int})::Tuple{Int, Int}
    # Initialize sum to 0 and product to 1
    s = 0
    p = 1

    # Loop through the numbers
    for number in numbers
        # Add number to sum
        s += number
        # Multiply product by number
        p *= number
    end

    # Return the tuple of sum and product
    return (s, p)
end
