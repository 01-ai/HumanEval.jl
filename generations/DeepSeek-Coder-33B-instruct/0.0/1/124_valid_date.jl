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

    # Check if the date is in the format: mm-dd-yyyy
    if length(date_parts) != 3
        return false
    end

    # Convert the month, day, and year to integers
    month, day, year = tryparse.(Int, date_parts)

    # Check if the month, day, and year are valid
    if isnothing(month) || isnothing(day) || isnothing(year)
        return false
    end

    # Check if the month is valid
    if month < 1 || month > 12
        return false
    end

    # Check if the day is valid
    if day < 1 || day > 31
        return false
    end

    # Check if the day is valid for February
    if month == 2 && (day > 29 || (day == 29 && !isleapyear(year)))
        return false
    end

    # Check if the day is valid for April, June, September, and November
    if month in [4, 6, 9, 11] && day > 30
        return false
    end

    # If all checks pass, the date is valid
    return true
end
