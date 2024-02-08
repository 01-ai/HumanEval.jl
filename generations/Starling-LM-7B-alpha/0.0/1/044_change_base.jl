"""
    change_base(x::Int, base::Int)::String

Change numerical base of input number x to base. Return string representation
after the conversion. base numbers are less than 10.

# Examples

```jldoctest
julia> change_base(8, 3)
"22"

julia> change_base(8, 2)
"1000"

julia> change_base(7, 2)
"111"
```
"""
 function change_base(x::Int, base::Int)::String
    # Convert the input number to a string
    str_x = string(x, "")

    # Initialize an empty string to store the result
    result = ""

    # Iterate through each character in the string representation of x
    for i in reverse(str_x)
        # Convert the character to its corresponding integer value
        digit = parse(Int, i)

        # Convert the digit to the new base
        new_digit = string(digit % base, "")

        # Append the new digit to the result
        result *= new_digit
    end

    # Reverse the result to get the correct order
    result = reverse(result)

    # Return the result as a string
    return result
end
