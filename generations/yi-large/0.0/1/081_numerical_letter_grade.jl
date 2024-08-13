"""
    numerical_letter_grade(grades::Vector{Float64})::Vector{String}

It is the last week of the semester and the teacher has to give the grades to
students. The teacher has been making her own algorithm for grading. The only
problem is, she has lost the code she used for grading. She has given you a list
of GPAs for some students and you have to write a function that can output a
list of letter grades using the following table:

GPA       |    Letter grade

> 4.0                A+
> 3.7                A
> 3.3                A-
> 3.0                B+
> 2.7                B
> 2.3                B-
> 2.0                C+
> 1.7                C
> 1.3                C-
> 1.0                D+
> 0.7                D
> 0.0                D-
> <= 0.0                E

# Examples

```jldoctest
julia> numerical_letter_grade([4.0, 3, 1.7, 2, 3.5])
5-element Vector{String}:
 "A"
 "B"
 "C-"
 "C"
 "A-"
```
"""
function numerical_letter_grade(grades::Vector{Float64})::Vector{String}
    # Initialize an empty vector to store the letter grades
    letter_grades = Vector{String}(undef, length(grades))

    # Loop through each GPA in the input vector
    for (i, gpa) in enumerate(grades)
        if gpa > 4.0
            letter_grades[i] = "A+"
        elseif gpa > 3.7
            letter_grades[i] = "A"
        elseif gpa > 3.3
            letter_grades[i] = "A-"
        elseif gpa > 3.0
            letter_grades[i] = "B+"
        elseif gpa > 2.7
            letter_grades[i] = "B"
        elseif gpa > 2.3
            letter_grades[i] = "B-"
        elseif gpa > 2.0
            letter_grades[i] = "C+"
        elseif gpa > 1.7
            letter_grades[i] = "C"
        elseif gpa > 1.3
            letter_grades[i] = "C-"
        elseif gpa > 1.0
            letter_grades[i] = "D+"
        elseif gpa > 0.7
            letter_grades[i] = "D"
        elseif gpa > 0.0
            letter_grades[i] = "D-"
        else
            letter_grades[i] = "E"
        end
    end

    return letter_grades
end

# Example usage
grades = [4.0, 3.0, 1.7, 2.0, 3.5]
letter_grades = numerical_letter_grade(grades)
println(letter_grades)
