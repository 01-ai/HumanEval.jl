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
    # Step 1: Check if the date string is not empty
    if isempty(date)
        return false
    end

    # Step 2: Verify the format of the date string
    if !occursin(r"^\d{2}-\d{2}-\d{4}$", date)
        return false
    end

    # Step 3: Split the date string into components
    parts = split(date, "-")
    month_str, day_str, year_str = parts...

    # Step 4: Convert strings to integers
    month = parse(Int, month_str)
    day = parse(Int, day_str)
    year = parse(Int, year_str)

    # Step 5: Check if the month is valid
    if month < 1 || month > 12
        return false
    end

    # Step 6: Define the maximum number of days for each month
    max_days = [31, isleapyear(year) ? 29 : 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]

    # Step 7: Check if the day is within the valid range
    if day < 1 || day > max_days[month]
        return false
    end

    # If all checks pass, the date is valid
    return true
end
