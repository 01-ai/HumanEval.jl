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
    # Initialize the result with the first operand
    result = operand[1]

    # Loop through the operators and apply them to the operands
    for i in 1:length(operator)
        if operator[i] == "+"
            result += operand[i + 1]
        elseif operator[i] == "-"
            result -= operand[i + 1]
        elseif operator[i] == "*"
            result *= operand[i + 1]
        elseif operator[i] == "÷"
            result = div(result, operand[i + 1])
        elseif operator[i] == "^"
            result = result ^ operand[i + 1]
        end
    end

    # Return the final result
    return result
end
