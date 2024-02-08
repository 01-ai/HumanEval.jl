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
    # Convert inputs to floats for comparison, handling both . and , as decimal separators
    function to_float(x)
        if isa(x, AbstractString)
            # Replace comma with dot for conversion
            x = replace(x, ',' => '.')
            return parse(Float64, x)
        elseif isa(x, Integer) || isa(x, AbstractFloat)
            return Float64(x)
        end
    end

    a_float = to_float(a)
    b_float = to_float(b)

    # Compare the float representations
    if a_float > b_float
        return a
    elseif b_float > a_float
        return b
    else
        return nothing
    end
end
