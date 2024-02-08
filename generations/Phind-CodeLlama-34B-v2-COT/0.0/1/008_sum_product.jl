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
    # Initialize sum and product
    sum_numbers = 0
    product_numbers = 1

    # Iterate through the list of integers
    for number in numbers
        # Add the integer to the sum and multiply it with the product
        sum_numbers += number
        product_numbers *= number
    end

    # Return a tuple of sum and product
    return (sum_numbers, product_numbers)
end
