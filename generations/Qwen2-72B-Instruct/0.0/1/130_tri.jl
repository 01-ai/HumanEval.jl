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
    # Define the base cases for the Tribonacci sequence
    n < 1 && return Int[]
    n == 1 && return [1]
    n == 2 && return [1, 2]

    # Initialize the sequence with the first three numbers
    sequence = [1, 2, 6]

    # Calculate the rest of the sequence up to n
    for i = 4:n
        if i % 2 == 0
            push!(sequence, 1 + i ÷ 2)
        else
            push!(sequence, sequence[end] + sequence[end-1] + sequence[end+1])
        end
    end

    # Return the first n numbers of the sequence
    return sequence[1:n]
end
function tri(n::Int)::Vector{Int}
    # Define the base cases for the Tribonacci sequence
    n < 1 && return Int[]
    n == 1 && return [1]
    n == 2 && return [1, 2]

    # Initialize the sequence with the first three numbers
    sequence = [1, 2, 6]

    # Calculate the rest of the sequence up to n
    for i = 4:n
        if i % 2 == 0
            push!(sequence, 1 + i ÷ 2)
        else
            # Calculate the next odd number using the recurrence relation
            # Note: We need to ensure that we have calculated up to n+1 to get the correct value for n
            if length(sequence) < i + 1
                sequence = vcat(sequence, tri(i + 1)[i + 1])
            end
            push!(sequence, sequence[end-2] + sequence[end-1] + sequence[end])
        end
    end

    # Return the first n numbers of the sequence
    return sequence[1:n]
end
