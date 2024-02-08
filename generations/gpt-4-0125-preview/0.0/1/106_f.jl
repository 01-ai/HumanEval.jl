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
    # Function to calculate factorial
    function factorial(x::Int)::Int
        if x == 0
            return 1
        else
            return x * factorial(x - 1)
        end
    end
    
    # Function to calculate sum from 1 to x
    function sum_to_x(x::Int)::Int
        return x * (x + 1) // 2
    end
    
    # Initialize the result vector
    result = Vector{Int}(undef, n)
    
    # Loop through 1 to n
    for i in 1:n
        if i % 2 == 0
            # If i is even, calculate factorial
            result[i] = factorial(i)
        else
            # If i is odd, calculate sum from 1 to i
            result[i] = sum_to_x(i)
        end
    end
    
    return result
end
