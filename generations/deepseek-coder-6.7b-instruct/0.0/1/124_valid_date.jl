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
    if date == "" || length(date) != 10 || date[3] != '-' || date[6] != '-'
        return false
    end

    month, day, year = parse(Int, date[1:2]), parse(Int, date[4:5]), parse(Int, date[7:end])

    if month < 1 || month > 12 || day < 1 || year < 1
        return false
    end

    if month ∈ [4, 6, 9, 11]
        return day <= 30
    elseif month == 2
        if year % 400 == 0 || (year % 100 != 0 && year % 4 == 0)
            return day <= 29
        else
            return day <= 28
        end
    else
        return day <= 31
    end
end
