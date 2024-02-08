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
    # Check if base is valid
    if base < 2 || base > 10
        throw(DomainError(base, "Base must be between 2 and 10"))
    end

    # Initialize result string
    result = ""

    # Loop through digits of x in reverse order
    while x > 0
        remainder = x % base
        x //= base

        # Append remainder to result string
        result = string(remainder) * result
    end

    return result
end
