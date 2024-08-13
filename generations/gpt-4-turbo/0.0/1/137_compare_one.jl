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
    function parse_number(x)
        if isa(x, AbstractString)
            try
                return parse(Float64, replace(x, ',' => '.'))
            catch
                error("Invalid number format")
            end
        else
            return Float64(x)
        end
    end
    
    # Parse numbers
    num_a = parse_number(a)
    num_b = parse_number(b)
    
    # Compare and return the original type of the larger value
    if num_a > num_b
        return a
    elseif num_b > num_a
        return b
    else
        return nothing
    end
end
