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
    a = occursin(r"\.", a) ? parse(Float64, replace(a, "." => "")) : a
    b = occursin(r"\.", b) ? parse(Float64, replace(b, "." => "")) : b

    a = occursin(r",", a) ? parse(Float64, replace(a, "," => ".")) : a
    b = occursin(r",", b) ? parse(Float64, replace(b, "," => ".")) : b

    if a == b
        return nothing
    else
        return a > b ? a : b
    end
end
