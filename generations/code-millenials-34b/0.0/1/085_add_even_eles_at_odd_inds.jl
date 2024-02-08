"""
    add_even_eles_at_odd_inds(xs::Vector{Int})::Int

Given a non-empty list of integers `xs`. add the even elements that are at odd
indices..

# Examples:

```jldoctest
julia> add_even_eles_at_odd_inds([4, 2, 6, 7])
10
```
"""


function add_even_eles_at_odd_inds(xs::Vector{Int})::Int
    sum = 0
    for i in 2:2:length(xs)
        if xs[i] % 2 == 0
            sum += xs[i]
        end
    end
    return sum
end

# Test cases
println(add_even_eles_at_odd_inds([4, 2, 6, 7])) # Expected output: 10
println(add_even_eles_at_odd_inds([1, 2, 3, 4, 5, 6])) # Expected output: 12
println(add_even_eles_at_odd_inds([10, 20, 30, 40, 50])) # Expected output: 70
println(add_even_eles_at_odd_inds([11, 21, 31, 41, 51])) # Expected output: 0
println(add_even_eles_at_odd_inds([2, 4, 6, 8])) # Expected output: 12
println(add_even_eles_at_odd_inds([1, 3, 5, 7])) # Expected output: 0
println(add_even_eles_at_odd_inds([1])) # Expected output: 0
println(add_even_eles_at_odd_inds([2])) # Expected output: 2
println(add_even_eles_at_odd_inds([1, 2])) # Expected output: 2
println(add_even_eles_at_odd_inds([2, 1])) # Expected output: 0
