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
        return []
    end

    # Initialize the sequence with the first element
    sequence = [1]

    for i in 2:n
        if i % 2 == 0
            push!(sequence, 1 + i // 2)
        else
            push!(sequence, sequence[i - 1] + sequence[i - 2] + tri(i + 1)[1])
        end
    end

    return sequence
end
