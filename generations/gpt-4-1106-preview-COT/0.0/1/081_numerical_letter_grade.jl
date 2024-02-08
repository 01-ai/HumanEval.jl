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
    # Mapping from GPA to letter grades
    grade_mapping = Dict(
        4.0 => "A+",
        3.7 => "A",
        3.3 => "A-",
        3.0 => "B+",
        2.7 => "B",
        2.3 => "B-",
        2.0 => "C+",
        1.7 => "C",
        1.3 => "C-",
        1.0 => "D+",
        0.7 => "D",
        0.0 => "D-",
        -Inf => "E"
    )

    # Initialize an empty vector for letter grades
    letter_grades = String[]

    # Iterate over the grades and determine the letter grade
    for gpa in grades
        for (threshold, letter) in sort(collect(grade_mapping), by=x->x[1], rev=true)
            if gpa > threshold
                push!(letter_grades, letter)
                break
            end
        end
    end

    return letter_grades
end