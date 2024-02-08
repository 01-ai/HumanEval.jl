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
    if x == 0
        return "0"
    end
    digits = "0123456789"
    stack = []
    while x > 0
        push!(stack, digits[x % base + 1])
        x = div(x, base)
    end
    return join(reverse(stack))
end

# Test cases
println(change_base(8, 3))  # Expected output: "22"
println(change_base(8, 2))  # Expected output: "1000"
println(change_base(7, 2))  # Expected output: "111"
