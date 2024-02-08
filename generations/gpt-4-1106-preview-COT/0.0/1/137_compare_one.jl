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
    # Step 2: Convert both `a` and `b` to floats for comparison
    float_a = parse(Float64, replace(string(a), ',' => '.'))
    float_b = parse(Float64, replace(string(b), ',' => '.'))

    # Step 3: Compare the float representations of `a` and `b`
    if float_a > float_b
        # Step 4: Return `a` in its original type
        return a
    elseif float_b > float_a
        # Step 5: Return `b` in its original type
        return b
    else
        # Step 6: If `a` and `b` are equal, return `nothing`
        return nothing
    end
end

# Step 7: Test cases
println(compare_one(1, 2.5)) # Should print 2.5
println(compare_one(1, "2,3")) # Should print "2,3"
println(compare_one("5,1", "6")) # Should print "6"
println(compare_one("1", 1)) # Should print nothing
