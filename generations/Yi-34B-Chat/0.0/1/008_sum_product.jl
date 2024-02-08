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
    # Base cases for empty list
    if length(numbers) == 0
        return (0, 1)
    end

    # Initialize sum and product
    sum_val = numbers[1]
    product_val = numbers[1]

    # Iterate over the list and update sum and product
    for number in numbers[2:end]
        sum_val += number
        product_val *= number
    end

    return (sum_val, product_val)
end
