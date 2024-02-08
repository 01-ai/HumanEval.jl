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
    # Split the date string into month, day, and year
    parts = split(date, "-")

    # Check if the date string is not empty
    if length(parts) != 3
        return false
    end

    # Extract month, day, and year from the parts
    month = parse(Int, parts[1])
    day = parse(Int, parts[2])
    year = parse(Int, parts[3])

    # Check if the month is within the valid range (1-12)
    if month < 1 || month > 12
        return false
    end

    # Check if the day is within the valid range for the given month
    if month == 2 && day > 29
        return false
    elseif month in [1, 3, 5, 7, 8, 10, 12] && day > 31
        return false
    elseif month in [4, 6, 9, 11] && day > 30
        return false
    end

    # Check if the year is within the valid range (e.g., 2000-2099)
    if year < 2000 || year > 2099
        return false
    end

    # If all conditions are satisfied, return true
    return true
end
