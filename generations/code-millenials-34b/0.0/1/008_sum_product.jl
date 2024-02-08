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
    sum_num = sum(numbers)
    prod_num = prod(numbers)
    return (sum_num, prod_num)
end

# Test cases
println(sum_product(Int[])) # Expected output: (0, 1)
println(sum_product([1, 2, 3, 4])) # Expected output: (10, 24)
