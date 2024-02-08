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
    # Step 1: Initialize sum and product
    sum = 0
    product = 1
    
    # Step 2: Iterate through the list of integers
    for number in numbers
        sum += number       # Add current number to sum
        product *= number   # Multiply current number with product
    end
    
    # Step 3: Return the sum and product as a tuple
    return (sum, product)
end
