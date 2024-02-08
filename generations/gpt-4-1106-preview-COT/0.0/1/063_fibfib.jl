"""
fibfib(n::Int)::Int

The FibFib number sequence is a sequence similar to the Fibbonacci sequnece
that's defined as follows:

  - fibfib(0) == 0
  - fibfib(1) == 0
  - fibfib(2) == 1
  - fibfib(n) == fibfib(n-1) + fibfib(n-2) + fibfib(n-3)

Please write a function to efficiently compute the n-th element of the fibfib
number sequence.

# Examples

```jldoctest
julia> fibfib(1)
0

julia> fibfib(5)
4

julia> fibfib(8)
24
```
"""
function fibfib(n::Int)::Int
    # Step 1: Base cases
    if n == 0
        return 0
    elseif n == 1
        return 0
    elseif n == 2
        return 1
    end

    # Step 2: Initialize an array to store computed values
    fibfib_values = zeros(Int, n+1)

    # Step 3: Set initial values
    fibfib_values[1] = 0  # fibfib(0)
    fibfib_values[2] = 0  # fibfib(1)
    fibfib_values[3] = 1  # fibfib(2)

    # Step 4: Calculate fibfib(i) for i = 3 to n
    for i in 4:n+1
        fibfib_values[i] = fibfib_values[i-1] + fibfib_values[i-2] + fibfib_values[i-3]
    end

    # Step 6: Return the value of fibfib(n)
    return fibfib_values[n+1]
end
