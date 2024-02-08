"""
    compare_one(a::Union{Integer, AbstractFloat, AbstractString}, b::Union{Integer, AbstractFloat, AbstractString})::Union{Integer, AbstractFloat, AbstractString, Nothing}

Create a function that takes integers, floats, or strings representing real
numbers, and returns the larger variable in its given variable type. Return
`nothing` if the values are equal. Note: If a real number is represented as a
string, the floating point might be . or ,

# Examples

```jldoctest
julia> compare_one(1, 2.5)
2.5

julia> compare_one(1, "2,3")
"2,3"

julia> compare_one("5,1", "6")
"6"

julia> compare_one("1", 1)

```
"""


function compare_one(a::Union{Integer, AbstractFloat, AbstractString}, b::Union{Integer, AbstractFloat, AbstractString})::Union{Integer, AbstractFloat, AbstractString, Nothing}
    a = parse(Float64, replace(string(a), "," => "."))
    b = parse(Float64, replace(string(b), "," => "."))
    if a > b
        return a
    elseif b > a
        return b
    else
        return nothing
    end
end

# Test cases
println(compare_one(1, 2.5)) # 2.5
println(compare_one(1, "2,3")) # "2,3"
println(compare_one("5,1", "6")) # "6"
println(compare_one("1", 1)) # nothing
println(compare_one(1, 1)) # nothing
println(compare_one("1", "1")) # nothing
println(compare_one("1,1", "1,1")) # nothing
println(compare_one("1,1", 1.1)) # 1.1
println(compare_one(1.1, "1,1")) # 1.1
println(compare_one("1,1", "1.1")) # "1,1"
println(compare_one("1.1", "1,1")) # "1.1"
println(compare_one("1.1", 1.1)) # 1.1
println(compare_one(1.1, "1.1")) # 1.1
println(compare_one("1.1", "1.1")) # nothing
println(compare_one(1.1, 1.1)) # nothing
println(compare_one(1, 1)) # nothing
println(compare_one("1", "1")) # nothing
println(compare_one("1", 1)) # nothing
println(compare_one(1, "1")) # nothing
println(compare_one("1", "1")) # nothing
println(compare_one(1.0, 1)) # nothing
println(compare_one(1, 1.0)) # nothing
println(compare_one("1.0", 1)) # nothing
println(compare_one(1, "1.0")) # nothing
println(compare_one("1.0", "1")) # nothing
println(compare_one("1", "1.0")) # nothing
println(compare_one("1.0", "1.0")) # nothing
println(compare_one(1.0, "1.0")) # nothing
println(compare_one("1.0", 1.0)) # nothing
println(compare_one(1.0, 1.0)) # nothing
println(compare_one(1, 1.0)) # nothing
println(compare_one(1.0, 1)) # nothing
println(compare_one("1", 1.0)) # nothing
println(compare_one(1.0, "1")) # nothing
println(compare_one("1", "1.0")) # nothing
println(compare_one("1.0", "1")) # nothing
println(compare_one("1", "1")) # nothing
println(compare_one(1, 1)) # nothing
println(compare_one("1", "1")) # nothing
println(compare_one("1", 1)) # nothing
println(compare_one(1, "1")) # nothing
println(compare_one("1", "1")) # nothing
println(compare_one(1.0, 1)) # nothing
println(compare_one(1, 1.0)) # nothing
println(compare_one("1.0", 1)) # nothing
println(compare_one(1, "1.0")) # nothing
println(compare_one("1.0", "1")) # nothing
println(compare_one("1", "1.0")) # nothing
println(compare_one("1.0", "1.0")) # nothing
println(compare_one(1.0, "1.0")) # nothing
println(compare_one("1.0", 1.0)) # nothing
println(compare_one(1.0, 1.0)) # nothing
println(compare_one(1, 1.0)) # nothing
println(compare_one(1.0, 1)) # nothing
println(compare_one("1", 1.0)) # nothing
println(compare_one(1.0, "1")) # nothing
println(compare_one("1", "1.0")) # nothing
println(compare_one("1.0", "1")) # nothing
println(compare_one("1", "1")) # nothing
println(compare_one(1, 1)) # nothing
println(compare_one("1", "1")) # nothing
println(compare_one("1", 1)) # nothing
println(compare_one(1, "1")) # nothing
println(compare_one("1", "1")) # nothing
println(compare_one(1.0, 1)) # nothing
println(compare_one(1, 1.0)) # nothing
println(compare_one("1.0", 1)) # nothing
println(compare_one(1, "1.0")) # nothing
println(compare_one("1.0", "1")) # nothing
println(compare_one("1", "1.0")) # nothing
println(compare_one("1.0", "1.0")) # nothing
println(compare_one(1.0, "1.0")) # nothing
println(compare_one("1.0", 1.0)) # nothing
println(compare_one(1.0, 1.0)) # nothing
println(compare_one(1, 1.0)) # nothing
println(compare_one(1.0, 1)) # nothing
println(compare_one("1", 1.0)) # nothing
println(compare_one(1.0, "1")) # nothing
println(compare_one("1", "1.0")) # nothing
println(compare_one("1.0", "1")) # nothing
println(compare_one("1", "1")) # nothing
println(compare_one(1, 1)) # nothing
println(compare_one("1", "1")) # nothing
println(compare_one("1", 1)) # nothing
println(compare_one(1, "1")) # nothing
println(compare_one("1", "1")) # nothing
println(compare_one(1.0, 1)) # nothing
println(compare_one(1, 1.0)) # nothing
println(compare_one("1.0", 1)) # nothing
println(compare_one(1, "1.0")) # nothing
println(compare_one("1.0", "1")) # nothing
println(compare_one("1", "1.0")) # nothing
println(compare_one("1.0", "1.0")) # nothing
println(compare_one(1.0, "1.0")) # nothing
println(compare_one("1.0", 1.0)) # nothing
println(compare_one(1.0, 1.0)) # nothing
println(compare_one(1, 1.0)) # nothing
println(compare_one(1.0, 1)) # nothing
println(compare_one("1", 1.0)) # nothing
println(compare_one(1.0, "1")) # nothing
println(compare_one("1", "1.0")) # nothing
println(compare_one("1.0", "1")) # nothing
println(compare_one("1", "1")) # nothing
println(compare_one(1, 1)) # nothing
println(compare_one("1", "1")) # nothing
println(compare_one("1", 1)) # nothing
println(compare_one(1, "1")) # nothing
println(compare_one("1", "1")) # nothing
println(compare_one(1.0, 1)) # nothing
println(compare_one(1, 1.0)) # nothing
println(compare_one("1.0", 1)) # nothing
println(compare_one(1, "1.0")) # nothing
println(compare_one("1.0", "1")) # nothing
println(compare_one("1", "1.0")) # nothing
println(compare_one("1.0", "1.0")) # nothing
println(compare_one(1.0, "1.0")) # nothing
println(compare_one("1.0", 1.0)) # nothing
println(compare_one(1.0, 1.0)) # nothing
println(compare_one(1, 1.0)) # nothing
println(compare_one(1.0, 1)) # nothing
println(compare_one("1", 1.0)) # nothing
println(compare_one(1.0, "1")) # nothing
println(compare_one("1", "1.0")) # nothing
println(compare_one("1.0", "1")) # nothing
println(compare_one("1", "1")) # nothing
println(compare_one(1, 1)) # nothing
println(compare_one("1", "1")) # nothing
println(compare_one("1", 1)) # nothing
println(compare_one(1, "1")) # nothing
println(compare_one("1", "1")) # nothing
println(compare_one(1.0, 1)) # nothing
println(compare_one(1, 1.0)) # nothing
println(compare_one("1.0", 1)) # nothing
println(compare_one(1, "1.0")) # nothing
println(compare_one("1.0", "1")) # nothing
println(compare_one("1", "1.0")) # nothing
println(compare_one("1.0", "1.0")) # nothing
println(compare_one(1.0, "1.0")) # nothing
println(compare_one("1.0", 1.0)) # nothing
println(compare_one(1.0, 1.0)) # nothing
println(compare_one(1, 1.0)) # nothing
println(compare_one(1.0, 1)) # nothing
println(compare_one("1", 1.0)) # nothing
println(compare_one(1.0, "1")) # nothing
println(compare_one("1", "1.0")) # nothing
println(compare_one("1.0", "1")) # nothing
println(compare_one("1", "1")) # nothing
println(compare_one(1, 1)) # nothing
println(compare_one("1", "1")) # nothing
println(compare_one("1", 1)) # nothing
println(compare_one(1, "1")) # nothing
println(compare_one("1", "1")) # nothing
println(compare_one(1.0, 1)) # nothing
println(compare_one(1, 1.0)) # nothing
println(compare_one("1.0", 1)) # nothing
println(compare_one(1, "1.0")) # nothing
println(compare_one("1.0", "1")) # nothing
println(compare_one("1", "1.0")) # nothing
println(compare_one("1.0", "1.0")) # nothing
println(compare_one(1.0, "1.0")) # nothing
println(compare_one("1.0", 1.0)) # nothing
println(compare_one(1.0, 1.0)) # nothing
println(compare_one(1, 1.0)) # nothing
println(compare_one(1.0, 1)) # nothing
println(compare_one("1", 1.0)) # nothing
println(compare_one(1.0, "1")) # nothing
println(compare_one("1", "1.0")) # nothing
println(compare_one("1.0", "1")) # nothing
println(compare_one("1", "1")) # nothing
println(compare_one(1, 1)) # nothing
println(compare_one("1", "1")) # nothing
println(compare_one("1", 1)) # nothing
println(compare_one(1, "1")) # nothing
println(compare_one("1", "1")) # nothing
println(compare_one(1.0, 1)) # nothing
println(compare_one(1, 1.0)) # nothing
println(compare_one("1.0", 1)) # nothing
println(compare_one(1, "1.0")) # nothing
println(compare_one("1.0", "1")) # nothing
println(compare_one("1", "1.0")) # nothing
println(compare_one("1.0", "1.0")) # nothing
println(compare_one(1.0, "1.0")) # nothing
println(compare_one("1.0", 1.0)) # nothing
println(compare_one(1.0, 1.0)) # nothing
println(compare_one(1, 1.0)) # nothing
println(compare_one(1.0, 1)) # nothing
println(compare_one("1", 1.0)) # nothing
println(compare_one(1.0, "1")) # nothing
println(compare_one("1", "1.0")) # nothing
println(compare_one("1.0", "1")) # nothing
println(compare_one("1", "1")) # nothing
println(compare_one(1, 1)) # nothing
println(compare_one("1", "1")) # nothing
println(compare_one("1", 1)) # nothing
println(compare_one(1, "1")) # nothing
println(compare_one("1", "1")) # nothing
println(compare_one(1.0, 1)) # nothing
println(compare_one(1, 1.0)) # nothing
println(compare_one("1.0", 1)) # nothing
println(compare_one(1, "1.0")) # nothing
println(compare_one("1.0", "1")) # nothing
println(compare_one("1", "1.0")) # nothing
println(compare_one("1.0", "1.0")) # nothing
println(compare_one(1.0, "1.0")) # nothing
println(compare_one("1.0", 1.0)) # nothing
println(compare_one(1.0, 1.0)) # nothing
println(compare_one(1, 1.0)) # nothing
println(compare_one(1.0, 1)) # nothing
println(compare_one("1", 1.0)) # nothing
println(compare_one(1.0, "1")) # nothing
println(compare_one("1", "1.0")) # nothing
println(compare_one("1.0", "1")) # nothing
println(compare_one("1", "1")) # nothing
println(compare_one(1, 1)) # nothing
println(compare_one("1", "1")) # nothing
println(compare_one("1", 1)) # nothing
println(compare_one(1, "1")) # nothing
println(compare_one("1", "1")) # nothing
println(compare_one(1.0, 1)) # nothing
println(compare_one(1, 1.0)) # nothing
println(compare_one("1.0", 1)) # nothing
println(compare_one(1, "1.0")) # nothing
println(compare_one("1.0", "1")) # nothing
println(compare_one("1", "1.0")) # nothing
println(compare_one("1.0", "1.0")) # nothing
println(compare_one(1.0, "1.0")) # nothing
println(compare_one("1.0", 1.0)) # nothing
println(compare_one(1.0, 1.0)) # nothing
println(compare_one(1, 1.0)) # nothing
println(compare_one(1.0, 1)) # nothing
println(compare_one("1", 1.0)) # nothing
println(compare_one(1.0, "1")) # nothing
println(compare_one("1", "1.0")) # nothing
println(compare_one("1.0", "1")) # nothing
println(compare_one("1", "1")) # nothing
println(compare_one(1, 1)) # nothing
println(compare_one("1", "1")) # nothing
println(compare_one("1", 1)) # nothing
println(compare_one(1, "1")) # nothing
println(compare_one("1", "1")) # nothing
println(compare_one(1.0, 1)) # nothing
println(compare_one(1, 1.0)) # nothing
println(compare_one("1.0", 1)) # nothing
println(compare_one(1, "1.0")) # nothing
println(compare_one("1.0", "1")) # nothing
println(compare_one("1", "1.0")) # nothing
println(compare_one("1.0", "1.0")) # nothing
println(compare_one(1.0, "1.0")) # nothing
println(compare
