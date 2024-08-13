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
function compare_one(a::Union{Integer, AbstractFloat, AbstractString}, 
                     b::Union{Integer, AbstractFloat, AbstractString})::Union{Integer, AbstractFloat, AbstractString, Nothing}
    
    # Convert strings to floats if necessary
    a_val = (a isa AbstractString) ? parse(Float64, replace(a, ',' => '.')) : a
    b_val = (b isa AbstractString) ? parse(Float64, replace(b, ',' => '.')) : b

    if a_val > b_val
        return a
    elseif b_val > a_val
        return b
    else
        return nothing
    end
end
