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
function f(n::Int)
    result = Int[]
    for i in 1:n
        if i % 2 == 0
            push_factorial(result, i)
        else
            push_sum(result, i)
        end
    end
    return result
end

function push_factorial(arr::Vector{Int}, num::Int)
    fact = 1
    for i in 1:num
        fact *= i
    end
    push_factorial(arr, fact)
end

function push_sum(arr::Vector{Int}, num::Int)
    sum = 0
    for i in 1:num
        sum += i
    end
    push_sum(arr, sum)
end
