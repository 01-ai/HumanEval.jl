"""
    do_algebra(operator::Vector{String}, operand::Vector{Int})

Given two lists operator, and operand. The first list has basic algebra
operations, and the second list is a list of integers. Use the two given lists
to build the algebric expression and return the evaluation of this expression.

The basic algebra operations:

  - Addition ( + )
  - Subtraction ( - )
  - Multiplication ( * )
  - Floor division ( ÷ )
  - Exponentiation ( ^ )

!!! note

    The length of operator list is equal to the length of operand list minus one.
    Operand is a list of of non-negative integers.
    Operator list has at least one operator, and operand list has at least two operands.

# Examples

```jldoctest
julia> do_algebra(["+", "*", "-"], [2, 3, 4, 5])  # 2 + 3 * 4 - 5
9
```
"""
function do_algebra(operator::Vector{String}, operand::Vector{Int})
    # Check if the length of operator is one less than the length of operand
    @assert length(operator) == length(operand) - 1 "The length of operator list should be one less than the length of operand list."
    
    # Check if operand contains only non-negative integers
    for i in operand
        @assert i >= 0 "Operand list should contain only non-negative integers."
    end
    
    # Check if operator list is not empty and operand list has at least two operands
    @assert length(operator) > 0 "Operator list should have at least one operator."
    @assert length(operand) >= 2 "Operand list should have at least two operands."
    
    # Initialize the result to the first operand
    result = operand[1]
    
    # Iterate through the operator list and perform the operations
    for (i, op) in enumerate(operator)
        # Get the operands for the current operation
        a = operand[i+1]
        b = operand[i+2]
        
        # Perform the operation based on the operator
        if op == "+"
            result += a
        elseif op == "-"
            result -= a
        elseif op == "*"
            result *= a
        elseif op == "÷"
            result = div(result, a)
        elseif op == "^"
            result = result ^ a
        else
            throw(ErrorException("Unknown operator: $op"))
        end
    end
    
    return result
end
