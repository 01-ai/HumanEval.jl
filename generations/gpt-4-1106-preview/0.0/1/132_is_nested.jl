"""
    is_nested(s::String)::Bool

Create a function that takes a string as input which contains only square
brackets. The function should return `true` if and only if there is a valid
subsequence of brackets where at least one bracket in the subsequence is nested.

# Examples

```jldoctest
julia> is_nested("[[]]")
true

julia> is_nested("[]]]]]]][[[[[]")
false

julia> is_nested("[][]")
false

julia> is_nested("[]")
false

julia> is_nested("[[][]]")
true

julia> is_nested("[[]][[")
true
```
"""
function is_nested(s::String)::Bool
    # Initialize a counter for the balance of brackets
    balance = 0
    # Initialize a variable to track if we have seen a nested bracket
    nested = false

    # Iterate over each character in the string
    for c in s
        if c == '['
            # Increment balance when we see an opening bracket
            balance += 1
        elseif c == ']'
            # Decrement balance when we see a closing bracket
            balance -= 1
            # If balance is greater than zero after decrement, we have a nested bracket
            if balance > 0
                nested = true
            end
        end
        # If balance goes negative, we have an invalid sequence
        if balance < 0
            return false
        end
    end

    # Return true if we have seen a nested bracket and balance is zero at the end
    return nested && balance == 0
end
