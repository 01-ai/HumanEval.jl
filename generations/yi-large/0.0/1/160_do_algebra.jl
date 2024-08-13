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
    # Check the input lengths and validate the operation
    if length(operator) + 1 != length(operand)
        throw(ArgumentError("The length of operator list must be one less than the length of the operand list."))
    end

    # Define a dictionary to map operators to their corresponding functions
    operations = Dict(
        "+" => (+),
        "-" => (-),
        "*" => (*),
        "÷" => (/),
        "^" => (^)
    )

    # Initialize the result with the first operand
    result = operand[1]

    # Loop through the operators and operands to perform the operations
    for (op, num) in zip(operator, operand[2:end])
        operation = operations[op]
        result = operation(result, num)
    end

    return result
end

# Example usage:
# julia> do_algebra(["+", "*", "-"], [2, 3, 4, 5])  # 2 + 3 * 4 - 5
# 9
