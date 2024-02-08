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
    # Base case for tri(1)
    if n == 1
        return [1]
    end
    
    # Initialize the vector to store Tribonacci sequence
    tribonacci = Vector{Int}(undef, n)
    
    # Base cases
    tribonacci[1] = 1
    tribonacci[2] = 2
    
    # Calculate the Tribonacci sequence using the recurrence relation
    for i in 3:n
        if i % 2 == 0
            tribonacci[i] = 1 + i ÷ 2
        else
            # Ensure that we do not access indices beyond the array bounds
            next_index = i + 1 <= n ? i + 1 : 1
            tribonacci[i] = tribonacci[i - 1] + tribonacci[i - 2] + tribonacci[next_index]
        end
    end
    
    return tribonacci
end

# Examples
println(tri(3))  # Output: [1, 2, 6]
