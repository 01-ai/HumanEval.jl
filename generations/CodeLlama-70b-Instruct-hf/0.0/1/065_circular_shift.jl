"""
    circular_shift(x::Int, shift::Int)::String

Circular shift the digits of the integer x, shift the digits right by `shift` and
return the result as a string. If `shift` > number of digits, return digits
reversed.

# Examples

```jldoctest
julia> circular_shift(12, 1)
"21"

julia> circular_shift(12, 2)
"12"
```
"""

1.  function circular_shift(x::Int, shift::Int)::String
2.      # Convert the integer to a string
3.      x_str = string(x)
4.  
5.      # Calculate the number of digits in the integer
6.      n_digits = length(x_str)
7.  
8.      # If shift is greater than the number of digits, return the digits reversed
9.      if shift > n_digits
10.         return reverse(x_str)
11.     end
12.  
13.     # Shift the digits right by 'shift' positions
14.     shifted_str = x_str[end-shift+1:end] * x_str[1:end-shift]
15.  
16.     # Return the shifted string
17.     return shifted_str
18. end