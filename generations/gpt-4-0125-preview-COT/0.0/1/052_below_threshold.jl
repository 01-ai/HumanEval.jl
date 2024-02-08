"""
    below_threshold(l::Vector, t::Number)::Bool

Return `true` if all numbers in the list `l` are below threshold t.

```jldoctest
julia> below_threshold([1, 2, 4, 10], 100)
true

julia> below_threshold([1, 20, 4, 10], 5)
false
```
"""
function below_threshold(l::Vector, t::Number)::Bool
    # Iterate through each element in the vector
    for num in l
        # Check if the current number is greater than or equal to the threshold
        if num >= t
            # Return false if any number is above the threshold
            return false
        end
    end
    # Return true if all numbers are below the threshold
    return true
end

# Test cases
println(below_threshold([1, 2, 4, 10], 100))  # Expected: true
println(below_threshold([1, 20, 4, 10], 5))   # Expected: false
