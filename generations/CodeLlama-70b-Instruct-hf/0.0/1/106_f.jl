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
    # Check if n is a positive integer
    if n < 1
        throw(DomainError(n, "n must be a positive integer"))
    end

    # Initialize an empty list to store the results
    result = Int[]

    # Iterate from 1 to n
    for i = 1:n
        # If i is even, calculate the factorial
        if i % 2 == 0
            factorial = 1
            for j = 1:i
                factorial *= j
            end
            push!(result, factorial)
        # If i is odd, calculate the sum of numbers from 1 to i
        else
            sum = 0
            for j = 1:i
                sum += j
            end
            push!(result, sum)
        end
    end

    # Return the result list
    return result
end
