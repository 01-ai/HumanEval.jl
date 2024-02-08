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
    # Base case handling
    if n == 0 || n == 1
        return n
    end
    
    # Initialize the first two Fibonacci numbers
    a, b = 0, 1
    
    # Calculate Fibonacci numbers up to n
    for _ in 2:n
        a, b = b, a + b  # Update the last two Fibonacci numbers
    end
    
    return b  # Return the n-th Fibonacci number
end

# Examples
println(fib(10))  # Expected output: 55
println(fib(1))   # Expected output: 1
println(fib(8))   # Expected output: 21
