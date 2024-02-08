"""
    below_zero(operations::Vector{Int})::Bool

You're given a list of deposit and withdrawal operations on a bank account that
starts with zero balance. Your task is to detect if at any point the balance of
account falls below zero, and at that point function should return `true`.
Otherwise it should return `false`.

# Examples

```jldoctest
julia> below_zero([1, 2, 3])
false

julia> below_zero([1, 2, -4, 5])
true
```
"""
function below_zero(operations::Vector{Int})::Bool
    # Step 1: Initialize the balance
    balance = 0
    
    # Step 2: Iterate through the operations list
    for operation in operations
        # Step 3: Update the balance
        balance += operation
        
        # Step 4: Check for negative balance
        if balance < 0
            return true
        end
    end
    
    # Step 5: Return false if no negative balance was found
    return false
end
