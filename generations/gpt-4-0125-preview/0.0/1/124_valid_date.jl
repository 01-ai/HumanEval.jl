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

    # Validate the format of the date string
    match_result = match(r"^(\d{2})-(\d{2})-(\d{4})$", date)
    if match_result === nothing
        return false
    end

    # Extract month, day, and year from the date string
    month, day, year = parse.(Int, match_result.captures)

    # Check the month range
    if month < 1 || month > 12
        return false
    end

    # Define the number of days in each month
    days_in_month = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]

    # Adjust for leap year in February
    if isleapyear(year)
        days_in_month[2] = 29
    end

    # Check the day range based on the month
    if day < 1 || day > days_in_month[month]
        return false
    end

    return true
end

# Helper function to determine if a year is a leap year
function isleapyear(year::Int)::Bool
    if year % 4 != 0
        return false
    elseif year % 100 != 0
        return true
    elseif year % 400 == 0
        return true
    else
        return false
    end
end
