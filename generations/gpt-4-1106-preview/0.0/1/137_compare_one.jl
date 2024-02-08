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
    # Function to convert string to float if possible, considering both . and , as decimal separators
    function parse_real_number(s::AbstractString)
        try
            return parse(Float64, replace(s, ',' => '.'))
        catch
            error("Invalid string representation of a real number: $s")
        end
    end
    
    # Convert strings to floats if necessary
    a_real = isa(a, AbstractString) ? parse_real_number(a) : a
    b_real = isa(b, AbstractString) ? parse_real_number(b) : b
    
    # Compare the real number representations
    if a_real > b_real
        return a
    elseif a_real < b_real
        return b
    else
        return nothing
    end
end

# Examples
println(compare_one(1, 2.5)) # Should print 2.5
println(compare_one(1, "2,3")) # Should print "2,3"
println(compare_one("5,1", "6")) # Should print "6"
println(compare_one("1", 1)) # Should print nothing
