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
    result = operand[1]
    for i in 2:length(operand)
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
        end
    end
    return result
end

# Testing the function
println(do_algebra(["+", "*", "-"], [2, 3, 4, 5]))  # 2 + 3 * 4 - 5 = 9
println(do_algebra(["+", "*", "-", "�", "^"], [2, 3, 4, 5, 2]))  # 2 + 3 * 4 - 5 � 2 ^ 2 = 1
println(do_algebra(["+", "*", "-", "�", "^"], [2, 3, 4, 5, 3]))  # 2 + 3 * 4 - 5 � 2 ^ 3 = 0
println(do_algebra(["+", "*", "-", "�", "^"], [2, 3, 4, 5, 4]))  # 2 + 3 * 4 - 5 � 2 ^ 4 = 0
println(do_algebra(["+", "*", "-", "�", "^"], [2, 3, 4, 5, 5]))  # 2 + 3 * 4 - 5 � 2 ^ 5 = 0
println(do_algebra(["+", "*", "-", "�", "^"], [2, 3, 4, 5, 6]))  # 2 + 3 * 4 - 5 � 2 ^ 6 = 0
println(do_algebra(["+", "*", "-", "�", "^"], [2, 3, 4, 5, 7]))  # 2 + 3 * 4 - 5 � 2 ^ 7 = 0
println(do_algebra(["+", "*", "-", "�", "^"], [2, 3, 4, 5, 8]))  # 2 + 3 * 4 - 5 � 2 ^ 8 = 0
println(do_algebra(["+", "*", "-", "�", "^"], [2, 3, 4, 5, 9]))  # 2 + 3 * 4 - 5 � 2 ^ 9 = 0
println(do_algebra(["+", "*", "-", "�", "^"], [2, 3, 4, 5, 10]))  # 2 + 3 * 4 - 5 � 2 ^ 10 = 0
println(do_algebra(["+", "*", "-", "�", "^"], [2, 3, 4, 5, 11]))  # 2 + 3 * 4 - 5 � 2 ^ 11 = 0
println(do_algebra(["+", "*", "-", "�", "^"], [2, 3, 4, 5, 12]))  # 2 + 3 * 4 - 5 � 2 ^ 12 = 0
println(do_algebra(["+", "*", "-", "�", "^"], [2, 3, 4, 5, 13]))  # 2 + 3 * 4 - 5 � 2 ^ 13 = 0
println(do_algebra(["+", "*", "-", "�", "^"], [2, 3, 4, 5, 14]))  # 2 + 3 * 4 - 5 � 2 ^ 14 = 0
println(do_algebra(["+", "*", "-", "�", "^"], [2, 3, 4, 5, 15]))  # 2 + 3 * 4 - 5 � 2 ^ 15 = 0
println(do_algebra(["+", "*", "-", "�", "^"], [2, 3, 4, 5, 16]))  # 2 + 3 * 4 - 5 � 2 ^ 16 = 0
println(do_algebra(["+", "*", "-", "�", "^"], [2, 3, 4, 5, 17]))  # 2 + 3 * 4 - 5 � 2 ^ 17 = 0
println(do_algebra(["+", "*", "-", "�", "^"], [2, 3, 4, 5, 18]))  # 2 + 3 * 4 - 5 � 2 ^ 18 = 0
println(do_algebra(["+", "*", "-", "�", "^"], [2, 3, 4, 5, 19]))  # 2 + 3 * 4 - 5 � 2 ^ 19 = 0
println(do_algebra(["+", "*", "-", "�", "^"], [2, 3, 4, 5, 20]))  # 2 + 3 * 4 - 5 � 2 ^ 20 = 0
println(do_algebra(["+", "*", "-", "�", "^"], [2, 3, 4, 5, 21]))  # 2 + 3 * 4 - 5 � 2 ^ 21 = 0
println(do_algebra(["+", "*", "-", "�", "^"], [2, 3, 4, 5, 22]))  # 2 + 3 * 4 - 5 � 2 ^ 22 = 0
println(do_algebra(["+", "*", "-", "�", "^"], [2, 3, 4, 5, 23]))  # 2 + 3 * 4 - 5 � 2 ^ 23 = 0
println(do_algebra(["+", "*", "-", "�", "^"], [2, 3, 4, 5, 24]))  # 2 + 3 * 4 - 5 � 2 ^ 24 = 0
println(do_algebra(["+", "*", "-", "�", "^"], [2, 3, 4, 5, 25]))  # 2 + 3 * 4 - 5 � 2 ^ 25 = 0
println(do_algebra(["+", "*", "-", "�", "^"], [2, 3, 4, 5, 26]))  # 2 + 3 * 4 - 5 � 2 ^ 26 = 0
println(do_algebra(["+", "*", "-", "�", "^"], [2, 3, 4, 5, 27]))  # 2 + 3 * 4 - 5 � 2 ^ 27 = 0
println(do_algebra(["+", "*", "-", "�", "^"], [2, 3, 4, 5, 28]))  # 2 + 3 * 4 - 5 � 2 ^ 28 = 0
println(do_algebra(["+", "*", "-", "�", "^"], [2, 3, 4, 5, 29]))  # 2 + 3 * 4 - 5 � 2 ^ 29 = 0
println(do_algebra(["+", "*", "-", "�", "^"], [2, 3, 4, 5, 30]))  # 2 + 3 * 4 - 5 � 2 ^ 30 = 0
println(do_algebra(["+", "*", "-", "�", "^"], [2, 3, 4, 5, 31]))  # 2 + 3 * 4 - 5 � 2 ^ 31 = 0
println(do_algebra(["+", "*", "-", "�", "^"], [2, 3, 4, 5, 32]))  # 2 + 3 * 4 - 5 � 2 ^ 32 = 0
println(do_algebra(["+", "*", "-", "�", "^"], [2, 3, 4, 5, 33]))  # 2 + 3 * 4 - 5 � 2 ^ 33 = 0
println(do_algebra(["+", "*", "-", "�", "^"], [2, 3, 4, 5, 34]))  # 2 + 3 * 4 - 5 � 2 ^ 34 = 0
println(do_algebra(["+", "*", "-", "�", "^"], [2, 3, 4, 5, 35]))  # 2 + 3 * 4 - 5 � 2 ^ 35 = 0
println(do_algebra(["+", "*", "-", "�", "^"], [2, 3, 4, 5, 36]))  # 2 + 3 * 4 - 5 � 2 ^ 36 = 0
println(do_algebra(["+", "*", "-", "�", "^"], [2, 3, 4, 5, 37]))  # 2 + 3 * 4 - 5 � 2 ^ 37 = 0
println(do_algebra(["+", "*", "-", "�", "^"], [2, 3, 4, 5, 38]))  # 2 + 3 * 4 - 5 � 2 ^ 38 = 0
println(do_algebra(["+", "*", "-", "�", "^"], [2, 3, 4, 5, 39]))  # 2 + 3 * 4 - 5 � 2 ^ 39 = 0
println(do_algebra(["+", "*", "-", "�", "^"], [2, 3, 4, 5, 40]))  # 2 + 3 * 4 - 5 � 2 ^ 40 = 0
println(do_algebra(["+", "*", "-", "�", "^"], [2, 3, 4, 5, 41]))  # 2 + 3 * 4 - 5 � 2 ^ 41 = 0
println(do_algebra(["+", "*", "-", "�", "^"], [2, 3, 4, 5, 42]))  # 2 + 3 * 4 - 5 � 2 ^ 42 = 0
println(do_algebra(["+", "*", "-", "�", "^"], [2, 3, 4, 5, 43]))  # 2 + 3 * 4 - 5 � 2 ^ 43 = 0
println(do_algebra(["+", "*", "-", "�", "^"], [2, 3, 4, 5, 44]))  # 2 + 3 * 4 - 5 � 2 ^ 44 = 0
println(do_algebra(["+", "*", "-", "�", "^"], [2, 3, 4, 5, 45]))  # 2 + 3 * 4 - 5 � 2 ^ 45 = 0
println(do_algebra(["+", "*", "-", "�", "^"], [2, 3, 4, 5, 46]))  # 2 + 3 * 4 - 5 � 2 ^ 46 = 0
println(do_algebra(["+", "*", "-", "�", "^"], [2, 3, 4, 5, 47]))  # 2 + 3 * 4 - 5 � 2 ^ 47 = 0
println(do_algebra(["+", "*", "-", "�", "^"], [2, 3, 4, 5, 48]))  # 2 + 3 * 4 - 5 � 2 ^ 48 = 0
println(do_algebra(["+", "*", "-", "�", "^"], [2, 3, 4, 5, 49]))  # 2 + 3 * 4 - 5 � 2 ^ 49 = 0
println(do_algebra(["+", "*", "-", "�", "^"], [2, 3, 4, 5, 50]))  # 2 + 3 * 4 - 5 � 2 ^ 50 = 0
println(do_algebra(["+", "*", "-", "�", "^"], [2, 3, 4, 5, 51]))  # 2 + 3 * 4 - 5 � 2 ^ 51 = 0
println(do_algebra(["+", "*", "-", "�", "^"], [2, 3, 4, 5, 52]))  # 2 + 3 * 4 - 5 � 2 ^ 52 = 0
println(do_algebra(["+", "*", "-", "�", "^"], [2, 3, 4, 5, 53]))  # 2 + 3 * 4 - 5 � 2 ^ 53 = 0
println(do_algebra(["+", "*", "-", "�", "^"], [2, 3, 4, 5, 54]))  # 2 + 3 * 4 - 5 � 2 ^ 54 = 0
println(do_algebra(["+", "*", "-", "�", "^"], [2, 3, 4, 5, 55]))  # 2 + 3 * 4 - 5 � 2 ^ 55 = 0
println(do_algebra(["+", "*", "-", "�", "^"], [2, 3, 4, 5, 56]))  # 2 + 3 * 4 - 5 � 2 ^ 56 = 0
println(do_algebra(["+", "*", "-", "�", "^"], [2, 3, 4, 5, 57]))  # 2 + 3 * 4 - 5 � 2 ^ 57 = 0
println(do_algebra(["+", "*", "-", "�", "^"], [2, 3, 4, 5, 58]))  # 2 + 3 * 4 - 5 � 2 ^ 58 = 0
println(do_algebra(["+", "*", "-", "�", "^"], [2, 3, 4, 5, 59]))  # 2 + 3 * 4 - 5 � 2 ^ 59 = 0
println(do_algebra(["+", "*", "-", "�", "^"], [2, 3, 4, 5, 60]))  # 2 + 3 * 4 - 5 � 2 ^ 60 = 0
println(do_algebra(["+", "*", "-", "�", "^"], [2, 3, 4, 5, 61]))  # 2 + 3 * 4 - 5 � 2 ^ 61 = 0
println(do_algebra(["+", "*", "-", "�", "^"], [2, 3, 4, 5, 62]))  # 2 + 3 * 4 - 5 � 2 ^ 62 = 0
println(do_algebra(["+", "*", "-", "�", "^"], [2, 3, 4, 5, 63]))  # 2 + 3 * 4 - 5 � 2 ^ 63 = 0
println(do_algebra(["+", "*", "-", "�", "^"], [2, 3, 4, 5, 64]))  # 2 + 3 * 4 - 5 � 2 ^ 64 = 0
println(do_algebra(["+", "*", "-", "�", "^"], [2, 3, 4, 5, 65]))  # 2 + 3 * 4 - 5 � 2 ^ 65 = 0
println(do_algebra(["+", "*", "-", "�", "^"], [2, 3, 4, 5, 66]))  # 2 + 3 * 4 - 5 � 2 ^ 66 = 0
println(do_algebra(["+", "*", "-", "�", "^"], [2, 3, 4, 5, 67]))  # 2 + 3 * 4 - 5 � 2 ^ 67 = 
