"""
    correct_bracketing(brackets::String)::Bool

Brackets is a string of "(" and ")". Return `true` if every opening bracket has
a corresponding closing bracket.

# Examples

```jldoctest
julia> correct_bracketing("(")
false

julia> correct_bracketing("()")
true

julia> correct_bracketing("(()())")
true

julia> correct_bracketing(")(()")
false
```
"""
function correct_bracketing(brackets::String)::Bool
    # Initialize a counter for the balance of brackets
    balance = 0

    # Iterate over each character in the string
    for c in brackets
        # Increment balance for an opening bracket
        if c == '('
            balance += 1
        # Decrement balance for a closing bracket
        elseif c == ')'
            balance -= 1
            # If balance goes negative, there's an unmatched closing bracket
            if balance < 0
                return false
            end
        # Ignore any other character
        else
            continue
        end
    end

    # If balance is 0, every opening bracket has a corresponding closing bracket
    return balance == 0
end

# Example usage and tests
# julia> correct_bracketing("(")
# false
# julia> correct_bracketing("()")
# true
# julia> correct_bracketing("(()())")
# true
# julia> correct_bracketing(")(()")
# false
