"""
    skjkasdkd(xs::Vector{Int})::Int

You are given a list of integers. You need to find the largest prime value and
return the sum of its digits.

# Examples

```jldoctest
julia> skjkasdkd([0, 3, 2, 1, 3, 5, 7, 4, 5, 5, 5, 2, 181, 32, 4, 32, 3, 2, 32, 324, 4, 3])
10

julia> skjkasdkd([1, 0, 1, 8, 2, 4597, 2, 1, 3, 40, 1, 2, 1, 2, 4, 2, 5, 1])
25

julia> skjkasdkd([1, 3, 1, 32, 5107, 34, 83278, 109, 163, 23, 2323, 32, 30, 1, 9, 3])
13

julia> skjkasdkd([0, 724, 32, 71, 99, 32, 6, 0, 5, 91, 83, 0, 5, 6])
11

julia> skjkasdkd([0, 81, 12, 3, 1, 21])
3

julia> skjkasdkd([0, 8, 1, 2, 1, 7])
7
```
"""
function skjkasdkd(xs::Vector{Int})::Int
    # Initialize the largest prime value to the first element of the list
    largest_prime = xs[1]
    
    # Loop through the list and find the largest prime value
    for x in xs[2:end]
        if isprime(x) && x > largest_prime
            largest_prime = x
        end
    end
    
    # Return the sum of the digits of the largest prime value
    return sum(digits(largest_prime))
end
