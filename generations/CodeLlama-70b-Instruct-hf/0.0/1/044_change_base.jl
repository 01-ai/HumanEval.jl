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
        throw(DomainError("Base must be between 2 and 10"))
    end

    if x == 0
        return "0"
    end

    digits = "0123456789"
    result = ""

    while x > 0
        result = digits[x % base + 1] * result
        x = div(x, base)
    end

    return result
end
