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
    # Step 2: Initialize the result vector
    result = Vector{Int}(undef, n)
    
    # Step 3: Loop through numbers from 1 to n
    for i in 1:n
        # Step 4: Check if i is even or odd
        if i % 2 == 0
            # Calculate factorial for even i
            factorial = 1
            for j in 2:i
                factorial *= j
            end
            result[i] = factorial
        else
            # Calculate sum for odd i
            sum = (i * (i + 1)) ÷ 2  # Using the arithmetic series sum formula
            result[i] = sum
        end
    end
    
    # Step 5: Return the result vector
    return result
end
