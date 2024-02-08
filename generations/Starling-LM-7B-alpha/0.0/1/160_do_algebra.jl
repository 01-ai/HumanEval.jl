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
    # Check if the lengths of the operator and operand lists are equal and differ by one
    if length(operator) != length(operand) - 1
        error("The lengths of the operator and operand lists are not equal and differ by one")
    end

    # Initialize the result variable
    result = operand[1]

    # Iterate through the operator and operand lists
    for i in 2:length(operator)
        # Perform the operation based on the current operator
        if operator[i] == "+"
            result += operand[i]
        elseif operator[i] == "-"
            result -= operand[i]
        elseif operator[i] == "*"
            result *= operand[i]
        elseif operator[i] == "÷"
            result ÷= operand[i]
        elseif operator[i] == "^"
            result ^= operand[i]
        else
            error("Invalid operator: $operator[i]")
        end
    end

    # Return the result
    return result
end
