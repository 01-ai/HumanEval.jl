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
    result = Int[]
    for i in 1:n
        if i % 2 == 0
            fact = 1
            for j in 1:i
                fact *= j
            end
            push!(result, fact)
        else
            sum_val = sum(1:i)
            push!(result, sum_val)
        end
    end
    return result
end
