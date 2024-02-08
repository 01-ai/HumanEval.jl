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
    function is_prime(n::Int)::Bool
        if n <= 1
            return false
        end
        if n <= 3
            return true
        end
        if n % 2 == 0 || n % 3 == 0
            return false
        end
        i = 5
        while i * i <= n
            if n % i == 0 || n % (i + 2) == 0
                return false
            end
            i += 6
        end
        return true
    end

    max_prime = -1
    for x in xs
        if is_prime(x)
            max_prime = max(max_prime, x)
        end
    end

    sum_digits = 0
    while max_prime > 0
        digit = max_prime % 10
        sum_digits += digit
        max_prime = div(max_prime, 10)
    end
    return sum_digits
end

# Test cases
println(skjkasdkd([0, 3, 2, 1, 3, 5, 7, 4, 5, 5, 5, 2, 181, 32, 4, 32, 3, 2, 32, 324, 4, 3])) # Expected output: 10
println(skjkasdkd([1, 0, 1, 8, 2, 4597, 2, 1, 3, 40, 1, 2, 1, 2, 4, 2, 5, 1])) # Expected output: 25
println(skjkasdkd([1, 3, 1, 32, 5107, 34, 83278, 109, 163, 23, 2323, 32, 30, 1, 9, 3])) # Expected output: 13
println(skjkasdkd([0, 724, 32, 71, 99, 32, 6, 0, 5, 91, 83, 0, 5, 6])) # Expected output: 11
println(skjkasdkd([0, 81, 12, 3, 1, 21])) # Expected output: 3
println(skjkasdkd([0, 8, 1, 2, 1, 7])) # Expected output: 7

