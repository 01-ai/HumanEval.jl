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
    return string(N, base = 2)
end
println(n_digits_in_binary(1000))  # Output: "1111101000"
println(n_digits_in_binary(150))   # Output: "10010110"
println(n_digits_in_binary(147))   # Output: "10010011"
