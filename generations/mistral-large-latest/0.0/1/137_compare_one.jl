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
    # Convert strings to floats, replacing commas with dots
    a_num = typeof(a) <: AbstractString ? parse(Float64, replace(a, "," => ".")) : float(a)
    b_num = typeof(b) <: AbstractString ? parse(Float64, replace(b, "," => ".")) : float(b)

    # Compare and return the larger value, or nothing if they are equal
    if a_num > b_num
        return a_num == a ? a : string(a_num)
    elseif a_num < b_num
        return b_num == b ? b : string(b_num)
    else
        return nothing
    end
end
