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
    result = Vector{Int}(undef, n)
    for i in 1:n
        if i % 2 == 0
            # If i is even, calculate factorial
            result[i] = factorial(i)
        else
            # If i is odd, calculate the sum of numbers from 1 to i (which is i*(i+1)/2)
            result[i] = div(i * (i + 1), 2)
        end
    end
    return result
end

# Test the function with the given example
@show f(5)
