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
    # Step 2: Initialize sum and product
    sum = 0
    product = 1

    # Step 3: Iterate over each element in the vector
    for number in numbers
        # Step 4: Update sum and product
        sum += number
        product *= number
    end

    # Step 5: Return the tuple with sum and product
    return (sum, product)
end
# Test with an empty vector
println(sum_product(Int[])) # Expected output: (0, 1)

# Test with a vector containing numbers
println(sum_product([1, 2, 3, 4])) # Expected output: (10, 24)
