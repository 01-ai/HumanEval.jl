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
    sum = 0
    product = 1

    # Iterate through each number in the list
    for number in numbers
        sum += number
        product *= number
    end

    # Return the sum and product as a tuple
    return (sum, product)
end

# Examples
println(sum_product(Int[])) # Output: (0, 1)
println(sum_product([1, 2, 3, 4])) # Output: (10, 24)