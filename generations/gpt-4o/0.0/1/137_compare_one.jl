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
function parse_real_number(x::AbstractString)
    # Replace ',' with '.' to handle European decimal format
    x = replace(x, ',' => '.')
    return parse(Float64, x)
end

function compare_one(a::Union{Integer, AbstractFloat, AbstractString}, b::Union{Integer, AbstractFloat, AbstractString})::Union{Integer, AbstractFloat, AbstractString, Nothing}
    # Convert strings to floats for comparison
    a_val = isa(a, AbstractString) ? parse_real_number(a) : a
    b_val = isa(b, AbstractString) ? parse_real_number(b) : b
    
    if a_val > b_val
        return a
    elseif b_val > a_val
        return b
    else
        return nothing
    end
end

# Examples
println(compare_one(1, 2.5))         # 2.5
println(compare_one(1, "2,3"))       # "2,3"
println(compare_one("5,1", "6"))     # "6"
println(compare_one("1", 1))         # nothing
