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
    # Step 1: Input Validation
    if base < 2 || base > 9
        return "Invalid base. Base must be between 2 and 9."
    end
    
    # Step 2: Base Conversion Process
    result = ""
    while x > 0
        remainder = x % base
        result = string(remainder) * result  # Prepend the remainder to the result string
        x = x ÷ base  # Update x to be the quotient
    end
    
    # Handle the case when x is 0
    if result == ""
        return "0"
    end
    
    # Step 3: Return the Result
    return result
end
