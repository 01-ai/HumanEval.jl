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
    if date == ""
        return false
    end

    # Split the date string by the delimiter "-"
    date_parts = split(date, "-")

    # Check if the length of the split array is 3
    if length(date_parts) != 3
        return false
    end

    # Convert the month and day to integers
    month = parse(Int, date_parts[1])
    day = parse(Int, date_parts[2])

    # Check if the month is between 1 and 12
    if month < 1 || month > 12
        return false
    end

    # Check if the day is between 1 and the maximum number of days in the given month
    if day < 1 || day > 31
        return false
    end

    # Check if the year is a leap year or not
    year = parse(Int, date_parts[3])
    if year % 4 == 0 && (year % 100 != 0 || year % 400 == 0)
        if day > 29
            return false
        end
    else
        if day > 28
            return false
        end
    end

    # Return true if all the checks pass
    return true
end
