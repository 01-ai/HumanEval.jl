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

    # Split the date string into month, day, and year
    parts = split(date, "-")
    if length(parts) != 3
        return false
    end

    # Convert the parts to integers
    month, day, year = parse.(Int, parts)

    # Check if the month is within the valid range (1-12)
    if month < 1 || month > 12
        return false
    end

    # Check if the day is within the valid range for the given month
    if month == 2
        # Leap year check
        if (year % 4 == 0 && year % 100 != 0) || year % 400 == 0
            max_day = 29
        else
            max_day = 28
        end
        if day > max_day
            return false
        end
    elseif month == 4 || month == 6 || month == 9 || month == 11
        if day > 30
            return false
        end
    else
        if day > 31
            return false
        end
    end

    # The date is valid
    return true
end
