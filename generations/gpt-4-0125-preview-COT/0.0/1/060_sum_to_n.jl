"""
    sum_to_n(n::Int)::Int

`sum_to_n` is a function that sums numbers from `1` to `n`.

# Examples

```jldoctest
julia> sum_to_n(30)
465

julia> sum_to_n(100)
5050

julia> sum_to_n(5)
15

julia> sum_to_n(10)
55

julia> sum_to_n(1)
1
```
"""

"""
    sum_to_n(n::Int)::Int

`sum_to_n` is a function that sums numbers from `1` to `n`.
"""
function sum_to_n(n::Int)::Int
    # Step 2: Input validation (assuming n is always positive for this implementation)
    
    # Step 3: Use the formula for the sum of the first n natural numbers
    return n * (n + 1) ÷ 2  # Using ÷ for integer division
end

# Step 5: Testing the function with provided examples
println(sum_to_n(30))  # Expected output: 465
println(sum_to_n(100)) # Expected output: 5050
println(sum_to_n(5))   # Expected output: 15
println(sum_to_n(10))  # Expected output: 55
println(sum_to_n(1))   # Expected output: 1
