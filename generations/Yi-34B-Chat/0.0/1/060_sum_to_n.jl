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
function sum_to_n(n::Int)::Int
    # Initialize the sum to 0
    total_sum = 0

    # Loop through the numbers from 1 to n, adding each to the total sum
    for i in 1:n
        total_sum += i
    end

    # Return the total sum
    return total_sum
end
