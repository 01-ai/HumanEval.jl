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
    sum_result = 0
    product_result = 1

    # Iterate through the numbers
    for num in numbers
        sum_result += num
        product_result *= num
    end

    # Return the tuple of sum and product
    return (sum_result, product_result)
end
