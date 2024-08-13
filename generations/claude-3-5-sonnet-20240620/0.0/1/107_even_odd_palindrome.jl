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
    even_count = 0
    odd_count = 0
    
    for num in 1:n
        if is_palindrome(num)
            if iseven(num)
                even_count += 1
            else
                odd_count += 1
            end
        end
    end
    
    return (even_count, odd_count)
end

function is_palindrome(num::Int)::Bool
    return num == reverse_number(num)
end

function reverse_number(num::Int)::Int
    reversed = 0
    while num > 0
        reversed = reversed * 10 + num % 10
        num = num ÷ 10
    end
    return reversed
end
