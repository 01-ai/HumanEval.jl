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
    # Check if the date string is empty
    if isempty(date)
        return false
    end

    # Split the date into year, month, and day
    parts = split(date, "-")
    if length(parts) != 3
        return false
    end

    # Check if the date is in the correct format: mm-dd-yyyy
    if length(parts[1]) != 2 || length(parts[2]) != 2
        return false
    end

    # Check if the year is a valid four-digit number
    year = tryparse(Int, parts[3])
    if isnothing(year) || year < 0
        return false
    end

    # Check if the month is within the valid range
    month = tryparse(Int, parts[1])
    if isnothing(month) || month < 1 || month > 12
        return false
    end

    # Check if the day is within the valid range for the given month
    day = tryparse(Int, parts[2])
    if isnothing(day) || day < 1
        return false
    end

    # Check if the day is valid for the given month
    if month in [4, 6, 9, 11] && day > 30
        return false
    elseif month == 2 && day > 29
        return false
    elseif month in [1, 3, 5, 7, 8, 10, 12] && day > 31
        return false
    end

    # All checks passed, the date is valid
    return true
end

# Test cases
println(valid_date("03-11-2000")) # true
println(valid_date("15-01-2012")) # false
println(valid_date("04-0-2040")) # false
println(valid_date("06-04-2020")) # true
println(valid_date("06/04/2020")) # false
