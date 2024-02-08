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
    # Check if the length of operator list is equal to the length of operand list minus one
    if length(operator) != length(operand) - 1
        error("The length of operator list must be equal to the length of operand list minus one")
    end

    # Check if the operand list has at least two operands
    if length(operand) < 2
        error("The operand list must have at least two operands")
    end

    # Check if the operator list has at least one operator
    if length(operator) < 1
        error("The operator list must have at least one operator")
    end

    # Initialize the result with the first operand
    result = operand[1]

    # Iterate over the rest of the operands and operators
    for i in 2:length(operand)
        # Perform the operation and update the result
        if operator[i-1] == "+"
            result += operand[i]
        elseif operator[i-1] == "-"
            result -= operand[i]
        elseif operator[i-1] == "*"
            result *= operand[i]
        elseif operator[i-1] == "�"
            result �= operand[i]
        elseif operator[i-1] == "^"
            result ^= operand[i]
        else
            error("Invalid operator")
        end
    end

    # Return the result
    return result
end
