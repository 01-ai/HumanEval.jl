"""
    will_it_fly(q::Vector{Int}, w::Int)::Bool

Write a function that returns `true` if the object `q` will fly, and `false`
otherwise. The object `q` will fly if it's balanced (it is a palindromic list)
and the sum of its elements is less than or equal the maximum possible weight
`w`.

# Examples

```jldoctest
julia> will_it_fly([1, 2], 5)  # 1+2 is less than the maximum possible weight, but it's unbalanced.
false

julia> will_it_fly([3, 2, 3], 1)  # it's balanced, but 3+2+3 is more than the maximum possible weight.
false

julia> will_it_fly([3, 2, 3], 9)  # 3+2+3 is less than the maximum possible weight, and it's balanced.
true

julia> will_it_fly([3], 5)  # 3 is less than the maximum possible weight, and it's balanced.
true
```
"""


function will_it_fly(q::Vector{Int}, w::Int)::Bool
    is_balanced = q == reverse(q)
    sum_q = sum(q)
    return is_balanced && sum_q <= w
end

# Test cases
@assert will_it_fly([1, 2], 5) == false
@assert will_it_fly([3, 2, 3], 1) == false
@assert will_it_fly([3, 2, 3], 9) == true
@assert will_it_fly([3], 5) == true

