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
function do_algebra(operators::Vector{String}, operands::Vector{Int})
    # Check if the length of the operators is one less than the length of the operands
    if length(operators) != length(operands) - 1
        throw(ArgumentError("The length of the operator list must be equal to the length of the operand list minus one."))
    end

    # Start with the first operand
    result = operands[1]

    # Iterate through the operators and operands to build and evaluate the expression
    for i in 1:length(operators)
        op = operators[i]
        operand = operands[i + 1]

        # Perform the operation based on the operator
        if op == "+"
            result += operand
        elseif op == "-"
            result -= operand
        elseif op == "*"
            result *= operand
        elseif op == "÷"
            result ÷= operand
        elseif op == "^"
            result ^= operand
        else
            throw(ArgumentError("Invalid operator: $op"))
        end
    end

    return result
end

# Example usage:
do_algebra(["+", "*", "-"], [2, 3, 4, 5])  # Should return 9
