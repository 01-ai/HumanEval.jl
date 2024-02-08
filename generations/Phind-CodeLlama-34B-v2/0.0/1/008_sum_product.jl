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
    sum_numbers = 0
    product_numbers = 1
    for number in numbers
        sum_numbers += number
        product_numbers *= number
    end
    return (sum_numbers, product_numbers)
end
