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
    # Convert strings with "," as decimal separator to "."
    a = replace(a, ',' => '.')
    b = replace(b, ',' => '.')

    # Convert strings to the appropriate numeric type
    a = tryparse(Float64, a)
    b = tryparse(Float64, b)

    # If a and b are both numbers, return the maximum as the same type as a and b
    if a isa AbstractFloat && b isa AbstractFloat
        return a > b ? a : (b > a ? b : nothing)
    # If a is a number and b is not, return a
    elseif a isa AbstractFloat
        return a
    # If b is a number and a is not, return b
    elseif b isa AbstractFloat
        return b
    # If neither a nor b is a number, return nothing
    else
        return nothing
    end
end
