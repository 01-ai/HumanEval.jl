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
    a = replace(a, ',' => '.')
    b = replace(b, ',' => '.')
    try
        a = parse(Float64, a)
        b = parse(Float64, b)
        if a == b
            return nothing
        else
            return a > b ? a : b
        end
    catch e
        if typeof(e) == ArgumentError
            return a > b ? a : b
        else
            rethrow(e)
        end
    end
end

# Test cases
@assert compare_one(1, 2.5) == 2.5
@assert compare_one(1, "2,3") == "2,3"
@assert compare_one("5,1", "6") == "6"
@assert compare_one("1", 1) === nothing

