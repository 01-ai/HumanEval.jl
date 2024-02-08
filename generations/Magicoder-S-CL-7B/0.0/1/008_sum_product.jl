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
    sum_val = 0
    product_val = 1
    for num in numbers
        sum_val += num
        product_val *= num
    end
    return (sum_val, product_val)
end
