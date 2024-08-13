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
    if base < 2 || base > 10
        throw(ArgumentError("Base must be between 2 and 10."))
    end

    result = ""
    while x > 0
        remainder = x % base
        x = div(x, base)
        result = string(remainder) * result
    end

    return result
end

# Test cases
# julia> change_base(8, 3)
# "22"
# julia> change_base(8, 2)
# "1000"
# julia> change_base(7, 2)
# "111"