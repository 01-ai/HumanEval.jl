"""
    tri(n::Int)::Vector{Int}

Everyone knows Fibonacci sequence, it was studied deeply by mathematicians in
the last couple centuries. However, what people don't know is Tribonacci
sequence. Tribonacci sequence is defined by the recurrence:

tri(1) = 1

tri(n) = 1 + n / 2, if n is even.

tri(n) =  tri(n - 1) + tri(n - 2) + tri(n + 1), if n is odd.

For example:

tri(2) = 1 + (2 / 2) = 2

tri(4) = 3

tri(3) = tri(2) + tri(1) + tri(4) = 2 + 1 + 3 = 6

You are given a non-negative integer number n, you have to a return a list of
the first n numbers of the Tribonacci sequence.

# Examples

```jldoctest
julia> tri(3)
3-element Vector{Int64}:
 1
 2
 6
```
"""


function tri(n::Int)::Vector{Int}
    if n == 0
        return Int[]
    end
    if n == 1
        return [1]
    end
    if n == 2
        return [1, 2]
    end
    if n == 3
        return [1, 2, 6]
    end
    result = [1, 2, 6]
    for i in 3:n
        if i % 2 == 0
            push!(result, 1 + i / 2)
        else
            push!(result, result[i - 1] + result[i - 2] + result[i + 1])
        end
    end
    return result
end

# Test cases
@assert tri(0) == Int[]
@assert tri(1) == [1]
@assert tri(2) == [1, 2]
@assert tri(3) == [1, 2, 6]
@assert tri(4) == [1, 2, 6, 4]
@assert tri(5) == [1, 2, 6, 4, 10]
@assert tri(6) == [1, 2, 6, 4, 10, 18]
@assert tri(7) == [1, 2, 6, 4, 10, 18, 22]
@assert tri(8) == [1, 2, 6, 4, 10, 18, 22, 30]
@assert tri(9) == [1, 2, 6, 4, 10, 18, 22, 30, 42]
@assert tri(10) == [1, 2, 6, 4, 10, 18, 22, 30, 42, 56]
