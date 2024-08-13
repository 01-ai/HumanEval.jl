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
    
    # Check the format of the date string
    date_pattern = r"^\d{2}-\d{2}-\d{4}$"
    if !occursin(date_pattern, date)
        return false
    end
    
    # Split the date into components
    parts = split(date, "-")
    if length(parts) != 3
        return false
    end
    
    # Extract month, day, and year
    month_str, day_str, year_str = parts
    month = parse(Int, month_str)
    day = parse(Int, day_str)
    year = parse(Int, year_str)  # Year is not used for validation in this function
    
    # Define the maximum days in each month
    max_days = Dict(
        1 => 31, 2 => 29, 3 => 31, 4 => 30, 5 => 31, 6 => 30,
        7 => 31, 8 => 31, 9 => 30, 10 => 31, 11 => 30, 12 => 31
    )
    
    # Check if the month is valid
    if month < 1 || month > 12
        return false
    end
    
    # Check if the day is valid for the given month
    if day < 1 || day > max_days[month]
        return false
    end
    
    return true
end
