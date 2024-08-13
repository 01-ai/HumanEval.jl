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
    if n <= 0
        return Int[]
    end
    
    result = Vector{Int}(undef, n)
    result[1] = 1
    
    for i in 2:n
        if iseven(i)
            result[i] = 1 + i ÷ 2
        else
            prev1 = i > 1 ? result[i-1] : 0
            prev2 = i > 2 ? result[i-2] : 0
            next1 = 1 + (i+1) ÷ 2  # This is tri(i+1) for even (i+1)
            result[i] = prev1 + prev2 + next1
        end
    end
    
    return result
end
