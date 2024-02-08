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
    # Define the grade boundaries
    grade_boundaries = Dict(
        "A+" => 4.0,
        "A" => 3.7,
        "A-" => 3.3,
        "B+" => 3.0,
        "B" => 2.7,
        "B-" => 2.3,
        "C+" => 2.0,
        "C" => 1.7,
        "C-" => 1.3,
        "D+" => 1.0,
        "D" => 0.7,
        "D-" => 0.0,
        "E" => -1.0,
    )

    # Initialize an empty vector to store the letter grades
    letter_grades = String[]

    # Iterate through the numerical grades
    for grade in grades
        # Initialize a flag to indicate if a letter grade is found
        found = false

        # Iterate through the grade boundaries
        for (letter_grade, boundary) in grade_boundaries
            # Check if the numerical grade is greater than or equal to the boundary
            if grade >= boundary
                # Append the corresponding letter grade to the vector
                push!(letter_grades, letter_grade)
                found = true
                break
            end
        end

        # If no letter grade is found, append "E"
        if !found
            push!(letter_grades, "E")
        end
    end

    # Return the vector of letter grades
    return letter_grades
end
