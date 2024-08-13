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
    # Ensure the operator list length is one less than the operand list length
    if length(operator) != length(operand) - 1
        throw(ArgumentError("The length of operator list must be equal to the length of operand list minus one."))
    end

    # Initialize the result with the first operand
    result = operand[1]

    # Iterate through the operators and operands to build the expression
    for i in 1:length(operator)
        op = operator[i]
        val = operand[i + 1]

        if op == "+"
            result += val
        elseif op == "-"
            result -= val
        elseif op == "*"
            result *= val
        elseif op == "÷"
            result ÷= val
        elseif op == "^"
            result ^= val
        else
            throw(ArgumentError("Unsupported operator: $op"))
        end
    end

    return result
end

# Example usage
println(do_algebra(["+", "*", "-"], [2, 3, 4, 5]))  # Output: 9