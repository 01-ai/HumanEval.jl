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
    # Helper function to convert string to float if necessary
    function convert_to_float(x)
        if isa(x, AbstractString)
            try
                return parse(Float64, replace(x, ',' => '.'))
            catch
                error("String cannot be converted to a float")
            end
        else
            return x
        end
    end

    # Convert inputs to floats for comparison, if necessary
    a_converted = convert_to_float(a)
    b_converted = convert_to_float(b)

    # Compare the converted values
    if a_converted > b_converted
        return a
    elseif b_converted > a_converted
        return b
    else
        return nothing
    end
end
