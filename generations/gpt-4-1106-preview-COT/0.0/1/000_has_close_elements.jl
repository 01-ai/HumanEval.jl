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
    # Step 1: Sort the list of numbers
    sorted_numbers = sort(numbers)
    
    # Step 2: Iterate through the sorted list
    for i in 1:length(sorted_numbers)-1
        # Step 3: Check if the absolute difference is less than the threshold
        if abs(sorted_numbers[i] - sorted_numbers[i+1]) < threshold
            return true
        end
    end
    
    # Step 4: Return false if no close elements are found
    return false
end
println(has_close_elements([1.0, 2.0, 3.0], 0.5)) # Expected output: false
println(has_close_elements([1.0, 2.8, 3.0, 4.0, 5.0, 2.0], 0.3)) # Expected output: true
