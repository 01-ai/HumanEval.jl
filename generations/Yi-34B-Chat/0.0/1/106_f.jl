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
    # Initialize an empty vector to store the results
    result = Vector{Int}(undef, n)
    
    # Loop through each index from 1 to n
    for i in 1:n
        # If the index is even, calculate the factorial
        if i % 2 == 0
            result[i] = factorial(i)
        # If the index is odd, calculate the sum of numbers from 1 to i
        else
            result[i] = sum(1:i)
        end
    end
    
    # Return the result vector
    return result
end
