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
    # Step 1: Initialize the counter
    counter = 0

    # Step 2: Iterate over each character in the string
    for c in s
        # Step 3: Check for opening bracket
        if c == '['
            counter += 1
        # Step 4: Check for closing bracket
        elseif c == ']'
            counter -= 1
        end

        # Step 5: Check if we have a nested bracket
        if counter > 1
            return true
        end

        # If the counter goes negative, it means brackets are not balanced, so we can return false
        if counter < 0
            return false
        end
    end

    # Step 6: Return false if no nested brackets were found
    return false
end
println(is_nested("[[]]")) # should return true
println(is_nested("[]]]]]]][[[[[]")) # should return false
println(is_nested("[][]")) # should return false
println(is_nested("[]")) # should return false
println(is_nested("[[][]]")) # should return true
println(is_nested("[[]][[")) # should return true
