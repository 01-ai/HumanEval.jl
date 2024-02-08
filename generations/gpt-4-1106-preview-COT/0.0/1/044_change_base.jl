"""
    change_base(x::Int, base::Int)::String

Change numerical base of input number x to base. Return string representation
after the conversion. base numbers are less than 10.

# Examples

```jldoctest
julia> change_base(8, 3)
"22"

julia> change_base(8, 2)
"1000"

julia> change_base(7, 2)
"111"
```
"""
function change_base(x::Int, base::Int)::String
    # Step 1: Validate input
    if x < 0 || base < 2 || base > 9
        throw(ArgumentError("Invalid input: x must be non-negative and base must be between 2 and 9."))
    end

    # Step 2: Handle the special case where x is 0
    if x == 0
        return "0"
    end

    # Step 3: Initialize the result string
    result = ""

    # Step 4: Convert x to the new base
    while x > 0
        # Step 4a: Get the next digit
        digit = x % base

        # Step 4b: Prepend the digit to the result
        result = string(digit) * result

        # Step 4c: Update x
        x ÷= base  # Use integer division
    end

    # Step 5: Reverse the result (not needed since we prepended digits)

    # Step 6: Return the result
    return result
end
