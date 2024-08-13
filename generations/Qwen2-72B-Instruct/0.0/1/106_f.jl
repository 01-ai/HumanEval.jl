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

# Define the function f
function f(n::Int)::Vector{Int}
    # Initialize the result vector
    result = Vector{Int}(undef, n)
    
    # Define a helper function to calculate factorial
    factorial(i::Int) = i <= 1 ? 1 : i * factorial(i - 1)
    
    # Define a helper function to calculate the sum of numbers from 1 to i
    sum_to_i(i::Int) = i * (i + 1) ÷ 2
    
    # Loop through 1 to n to calculate the value for each index
    for i in 1:n
        # Calculate the value based on whether i is even or odd
        value = iseven(i) ? factorial(i) : sum_to_i(i)
        # Assign the calculated value to the result vector
        result[i] = value
    end
    
    # Return the result vector
    return result
end
