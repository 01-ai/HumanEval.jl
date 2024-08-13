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
    # Convert both inputs to a common type for comparison
    if isa(a, AbstractString) && isa(b, AbstractString)
        # Both are strings, so parse them to the appropriate numeric type
        a_num = tryparse(Float64, replace(a, ',' => '.'))
        b_num = tryparse(Float64, replace(b, ',' => '.'))
    else
        # At least one is a number, so convert strings to the appropriate numeric type
        a_num = isa(a, AbstractString) ? tryparse(Float64, replace(a, ',' => '.')) : a
        b_num = isa(b, AbstractString) ? tryparse(Float64, replace(b, ',' => '.')) : b
    end
    
    # Compare the numeric values
    if isnothing(a_num) || isnothing(b_num)
        return nothing  # One of the inputs is not a valid number
    elseif a_num > b_num
        return a  # Return the original form of a
    elseif b_num > a_num
        return b  # Return the original form of b
    else
        return nothing  # Values are equal
    end
end

# Test cases
println(compare_one(1, 2.5))    # Expected: 2.5
println(compare_one(1, "2,3"))  # Expected: "2,3"
println(compare_one("5,1", "6")) # Expected: "6"
println(compare_one("1", 1))    # Expected: nothing
