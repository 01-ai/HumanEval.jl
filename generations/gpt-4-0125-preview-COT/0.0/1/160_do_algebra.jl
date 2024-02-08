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
    # Step 1: Input Validation
    if length(operator) != length(operand) - 1 || isempty(operator) || isempty(operand)
        error("Invalid input: The length of operator list must be one less than the length of operand list.")
    end
    if any(x -> x < 0, operand)
        error("Invalid input: All operands must be non-negative integers.")
    end

    # Step 2: Building the Expression
    expression = ""
    for i in 1:length(operator)
        expression *= string(operand[i], " ", operator[i], " ")
    end
    expression *= string(operand[end])  # Append the last operand

    # Step 3: Evaluating the Expression
    expr = Meta.parse(expression)
    result = eval(expr)

    # Step 4: Return the Result
    return result
end
