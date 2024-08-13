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

    # Check if the date format is correct (mm-dd-yyyy)
    if !occursin(r"^\d{2}-\d{2}-\d{4}$", date)
        return false
    end

    # Extract month, day, and year from the date string
    month, day, year = parse.(Int, split(date, "-"))

    # Check if month is valid (1-12)
    if month < 1 || month > 12
        return false
    end

    # Define the number of days for each month
    days_in_month = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]

    # Check for leap year and update February's days if necessary
    if year % 4 == 0 && (year % 100 != 0 || year % 400 == 0)
        days_in_month[2] = 29
    end

    # Check if the day is valid for the given month
    if day < 1 || day > days_in_month[month]
        return false
    end

    return true
end
