"""
    n_digits_in_binary(N::Int)::String

Given a positive integer N, return the total sum of its digits in binary.

@N integer Constraints: 0 ≤ N ≤ 10000.

# Examples

```jldoctest
julia> n_digits_in_binary(1000)
"1"

julia> n_digits_in_binary(150)
"110"

julia> n_digits_in_binary(147)
"1100"
```
"""
function n_digits_in_binary(N::Int)::String
    if N == 0
        return "0"
    end
    
    binary_digits = ""
    while N > 0
        binary_digits = string(N % 2) * binary_digits
        N ÷= 2
    end
    
    return binary_digits
end
