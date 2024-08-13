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
    # Check if base is less than 10
    if base < 2 || base > 9
        throw(DomainError(base, "Base must be between 2 and 9"))
    end

    # Initialize result string
    result = ""

    # Convert number to new base
    while x > 0
        rem = x % base
        x = div(x, base)
        result = string(rem) * result
    end

    return result
end
