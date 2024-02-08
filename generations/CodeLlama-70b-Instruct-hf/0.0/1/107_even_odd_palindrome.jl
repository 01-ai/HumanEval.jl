"""
    even_odd_palindrome(n::Int)::Tuple{Int, Int}

Given a positive integer n, return a tuple that has the number of even and odd
integer palindromes that fall within the range(1, n), inclusive.

!!! note

     1. 1 <= n <= 10^3
     2. returned tuple has the number of even and odd integer palindromes respectively.

# Examples

```jldoctest
julia> even_odd_palindrome(3) # palindrome are 1, 2, 3. one of them is even, and two of them are odd.
(1, 2)

julia> even_odd_palindrome(12) # Integer palindrome are 1, 2, 3, 4, 5, 6, 7, 8, 9, 11. four of them are even, and 6 of them are odd.
(4, 6)
```
"""
function even_odd_palindrome(n::Int)::Tuple{Int, Int}
    if n < 1 || n > 1000
        throw(DomainError(n, "n must be between 1 and 1000"))
    end

    even_count = 0
    odd_count = 0

    for i in 1:n
        if is_palindrome(i)
            if i % 2 == 0
                even_count += 1
            else
                odd_count += 1
            end
        end
    end

    return (even_count, odd_count)
end

function is_palindrome(n::Int)::Bool
    return n == reverse(digits(n))
end

function reverse(arr::Vector{Int})::Int
    rev = 0
    for num in arr
        rev = rev * 10 + num
    end
    return rev
end