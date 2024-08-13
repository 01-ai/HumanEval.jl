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
    @assert length(operator) == length(operand) - 1
    @assert all(op -> op in ["+", "-", "*", "÷", "^"], operator)
    @assert all(x -> x >= 0, operand)

    result = operand[1]
    for (i, op) in enumerate(operator)
        if op == "+"
            result += operand[i + 1]
        elseif op == "-"
            result -= operand[i + 1]
        elseif op == "*"
            result *= operand[i + 1]
        elseif op == "÷"
            result = div(result, operand[i + 1])
        elseif op == "^"
            result = result ^ operand[i + 1]
        end
    end
    return result
end
