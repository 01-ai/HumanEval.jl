"""
    is_simple_power(x::Number, n::Number)::Bool

Your task is to write a function that returns `true` if a number `x` is a simple
power of `n` and `false` in other cases. `x` is a simple power of `n` if n ^
int = x.

# Examples:

```jldoctest
julia> is_simple_power(1, 4)
true

julia> is_simple_power(2, 2)
true

julia> is_simple_power(8, 2)
true

julia> is_simple_power(3, 2)
false

julia> is_simple_power(3, 1)
false

julia> is_simple_power(5, 3)
false
```
"""
function is_simple_power(x::Number, n::Number)::Bool
    # Step 1: Check if n is less than or equal to 0
    if n <= 0
        return false
    end
    
    # Step 2: Check if x is 1
    if x == 1
        return true
    end
    
    # Step 3: Check if n is 1 and x is not 1
    if n == 1 && x != 1
        return false
    end
    
    # Step 4: Calculate the nth root of x
    nth_root = x^(1/n)
    
    # Step 5: Check if the nth root is an integer
    if nth_root == floor(nth_root)
        # Step 6: Check if raising the nth root to the power of n equals x
        return nth_root^n == x
    end
    
    # Step 7: Return false if nth root is not an integer
    return false
end
