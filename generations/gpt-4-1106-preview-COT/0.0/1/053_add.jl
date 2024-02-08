"""
    add(x::Int, y::Int)

Add two numbers `x` and `y`.

# Examples

```jldoctest
julia> add(2, 3)
5

julia> add(5, 7)
12
```
"""

"""
    add(x::Int, y::Int)

Add two numbers `x` and `y`.

# Examples

```jldoctest
julia> add(2, 3)
5

julia> add(5, 7)
12
```
"""
function add(x::Int, y::Int)
    # Step 2: Return the sum of x and y
    return x + y
end

# Examples to test the function
println(add(2, 3))  # Should print 5
println(add(5, 7))  # Should print 12
