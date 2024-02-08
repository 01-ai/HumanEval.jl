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
    res = []
    while true
        d, r = divrem(x, base)
        push!(res, r)
        if d == 0
            break
        else
            x = d
        end
    end
    join(reverse(res))
end
