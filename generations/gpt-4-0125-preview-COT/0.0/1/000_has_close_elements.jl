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
    # Iterate through each number in the list
    for i in 1:length(numbers)-1
        # Compare with every other number following the current one
        for j in i+1:length(numbers)
            # Calculate the absolute difference between the two numbers
            difference = abs(numbers[i] - numbers[j])
            
            # Check if the difference is less than the threshold
            if difference < threshold
                # If yes, return true
                return true
            end
        end
    end
    
    # If no such pair is found, return false
    return false
end
