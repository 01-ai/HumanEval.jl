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
    # Step 1: Verify input conditions
    if length(operator) != length(operand) - 1
        error("The length of operator list must be equal to the length of operand list minus one.")
    end
    if any(x -> x < 0, operand)
        error("Operands must be non-negative integers.")
    end
    if length(operator) < 1 || length(operand) < 2
        error("Operator list must have at least one operator, and operand list must have at least two operands.")
    end

    # Step 2: Initialize the expression string
    expression = string(operand[1])

    # Step 3: Build the expression string
    for i in 1:length(operator)
        expression *= " " * operator[i] * " " * string(operand[i + 1])
    end

    # Step 4: Evaluate the expression
    result = eval(Meta.parse(expression))

    # Step 5: Return the result
    return result
end
