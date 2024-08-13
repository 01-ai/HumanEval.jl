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
    factorial = 1
    sum = 0
    
    for i in 1:n
        if iseven(i)
            factorial *= i
            result[i] = factorial
        else
            sum += i
            result[i] = sum
        end
    end
    
    return result
end
