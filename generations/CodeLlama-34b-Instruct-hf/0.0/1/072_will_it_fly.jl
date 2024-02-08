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
    # Check if the object is balanced (i.e., a palindromic list)
    if !is_palindrome(q)
        return false
    end

    # Check if the sum of the elements is less than or equal to the maximum possible weight
    if sum(q) > w
        return false
    end

    return true
end

# Helper function to check if a list is a palindrome
function is_palindrome(q::Vector{Int})::Bool
    return q == reverse(q)
end
