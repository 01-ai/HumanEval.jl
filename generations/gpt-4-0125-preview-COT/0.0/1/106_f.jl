"""
    f(n::Int)::Vector{Int}

Implement the function `f` that takes `n` as a parameter, and returns a list of
size n, such that the value of the element at index `i` is the factorial of `i`
if `i` is even or the sum of numbers from 1 to `i` otherwise. `i` starts from 1.
The factorial of `i` is the multiplication of the numbers from 1 to i (1 * 2 *
... * i).

# Examples

```jldoctest
julia> f(5)
5-element Vector{Int64}:
  1
  2
  6
 24
 15
```
"""
function f(n::Int)::Vector{Int}
    # Step 1: Initialize the result vector
    result = Vector{Int}(undef, n)
    
    # Step 2: Loop through 1 to n
    for i in 1:n
        # Step 3: Check if `i` is even or odd
        if i % 2 == 0
            # Step 4: Calculate factorial for even `i`
            result[i] = factorial(i)
        else
            # Step 5: Calculate sum for odd `i`
            result[i] = sum(1:i)
        end
    end
    
    # Step 6: Return the result vector
    return result
end

# Helper function to calculate factorial (if not using built-in)
function factorial(n::Int)::Int
    if n == 0
        return 1
    else
        return n * factorial(n - 1)
    end
end
