"""
    fib(n::Int)::Int

Return n-th Fibonacci number.

# Examples

```jldoctest
julia> fib(10)
55

julia> fib(1)
1

julia> fib(8)
21
```
"""
function fib(n::Int)::Int
    # Step 1: Base cases for non-positive n
    if n <= 0
        return 0
    end

    # Step 2: Base cases for n being 1 or 2
    if n == 1 || n == 2
        return 1
    end

    # Step 3: Initialize the previous two Fibonacci numbers
    a, b = 0, 1

    # Step 4: Loop to calculate the n-th Fibonacci number
    for i in 3:n
        a, b = b, a + b
    end

    # Step 5: Return the last calculated Fibonacci number
    return b
end
