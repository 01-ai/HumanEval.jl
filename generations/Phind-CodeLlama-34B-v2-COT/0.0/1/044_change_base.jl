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
    # Convert the input number to the specified base
    digits_arr = digits(x, base)
    
    # Join the digits to form a string
    result = join(digits_arr)
    
    # Return the string
    return result
end
