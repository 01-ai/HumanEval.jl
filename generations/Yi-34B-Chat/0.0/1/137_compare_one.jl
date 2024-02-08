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
    # Check if a and b are equal
    if a == b
        return nothing
    end

    # Try to convert strings to numbers
    if isa(a, AbstractString)
        a = try
            parse(Float64, a)
        catch
            a
        end
    end
    if isa(b, AbstractString)
        b = try
            parse(Float64, b)
        catch
            b
        end
    end

    # Compare the values
    if isa(a, Integer) && isa(b, Integer)
        return a > b ? a : b
    elseif isa(a, AbstractFloat) && isa(b, AbstractFloat)
        return a > b ? a : b
    elseif isa(a, AbstractString) && isa(b, AbstractString)
        return a > b ? a : b
    end

    # If we reach this point, something went wrong
    error("Cannot compare $a and $b")
end
