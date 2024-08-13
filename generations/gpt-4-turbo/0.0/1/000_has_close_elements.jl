"""
    has_close_elements(numbers::Vector{Float64}, threshold::Float64)::Bool

Check if in given list of `numbers`, are any two numbers closer to each other than
given `threshold`.

# Examples

```jldoctest
julia> has_close_elements([1.0, 2.0, 3.0], 0.5)
false

julia> has_close_elements([1.0, 2.8, 3.0, 4.0, 5.0, 2.0], 0.3)
true
```
"""
function has_close_elements(numbers::Vector{Float64}, threshold::Float64)::Bool
    # Sort the numbers to make comparison of neighbors sufficient
    sorted_numbers = sort(numbers)
    
    # Check the difference between consecutive elements
    for i in 1:length(sorted_numbers)-1
        if abs(sorted_numbers[i] - sorted_numbers[i+1]) < threshold
            return true
        end
    end
    
    return false
end
