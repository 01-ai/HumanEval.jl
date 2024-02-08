"""
    sum_to_n(n::Int)::Int

`sum_to_n` is a function that sums numbers from `1` to `n`.

# Examples

```jldoctest
julia> sum_to_n(30)
465

julia> sum_to_n(100)
5050

julia> sum_to_n(5)
15

julia> sum_to_n(10)
55

julia> sum_to_n(1)
1
```
"""
function sum_to_n(n::Int)::Int
    sum = 0
    for i in 1:n
        sum += i
    end
    return sum
end
