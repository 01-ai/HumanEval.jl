"""
    valid_date(date::String)::Bool

You have to write a function which validates a given date string and returns
`true` if the date is valid otherwise `false` The date is valid if all of the
following rules are satisfied:

 1. The date string is not empty.
 2. The number of days is not less than 1 or higher than 31 days for months
    1,3,5,7,8,10,12. And the number of days is not less than 1 or higher than 30
    days for months 4,6,9,11. And, the number of days is not less than 1 or
    higher than 29 for the month 2.
 3. The months should not be less than 1 or higher than 12.
 4. The date should be in the format: mm-dd-yyyy

# Examples

```jldoctest
julia> valid_date("03-11-2000")
true

julia> valid_date("15-01-2012")
false

julia> valid_date("04-0-2040")
false

julia> valid_date("06-04-2020")
true

julia> valid_date("06/04/2020")
false
```
"""


function valid_date(date::String)::Bool
    # Check if the date string is not empty
    if isempty(date)
        return false
    end

    # Split the date string into month, day, and year
    date_parts = split(date, '-')

    # Check if the date is in the correct format
    if length(date_parts) != 3
        return false
    end

    # Parse the month, day, and year
    month, day, year = tryparse.(Int, date_parts)

    # Check if the month, day, and year are valid
    if month === nothing || day === nothing || year === nothing
        return false
    end

    # Check if the month is valid
    if !(1 <= month <= 12)
        return false
    end

    # Check if the day is valid
    if month in [1, 3, 5, 7, 8, 10, 12]
        if !(1 <= day <= 31)
            return false
        end
    elseif month in [4, 6, 9, 11]
        if !(1 <= day <= 30)
            return false
        end
    elseif month == 2
        if (year % 4 == 0 && (year % 100 != 0 || year % 400 == 0))
            if !(1 <= day <= 29)
                return false
            end
        else
            if !(1 <= day <= 28)
                return false
            end
        end
    end

    return true
end

# Test cases
println(valid_date("03-11-2000")) # true
println(valid_date("15-01-2012")) # false
println(valid_date("04-0-2040")) # false
println(valid_date("06-04-2020")) # true
println(valid_date("06/04/2020")) # false 
