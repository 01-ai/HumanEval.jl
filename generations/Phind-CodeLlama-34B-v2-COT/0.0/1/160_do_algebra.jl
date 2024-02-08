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
    # Initialize result to the first operand
    result = operand[1]

    # Iterate over the operators and operands simultaneously
    for (op, num) in zip(operator, operand[2:end])
        # Perform the operation and update result
        if op == "+"
            result += num
        elseif op == "-"
            result -= num
        elseif op == "*"
            result *= num
        elseif op == "÷"
            result ÷= num
        elseif op == "^"
            result ^= num
        end
    end

    # Return the final result
    return result
end
