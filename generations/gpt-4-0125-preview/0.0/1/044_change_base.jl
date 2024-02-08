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
    # Validate the base
    if base < 2 || base > 9
        throw(ArgumentError("Base must be between 2 and 9, inclusive."))
    end

    # Handle the case where x is 0
    if x == 0
        return "0"
    end

    # Convert the number
    digits = []
    while x > 0
        push!(digits, x % base)  # Collect the remainder
        x ÷= base  # Integer division
    end

    # Reverse the digits and convert to string
    return join(reverse(digits))
end
