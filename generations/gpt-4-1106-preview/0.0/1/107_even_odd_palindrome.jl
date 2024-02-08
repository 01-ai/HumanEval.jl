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
    # Initialize counters for even and odd palindromes
    even_count = 0
    odd_count = 0

    # Check each number from 1 to n to see if it is a palindrome
    for i in 1:n
        # Convert the number to a string to check if it is a palindrome
        str_i = string(i)
        if str_i == reverse(str_i)  # Check if the number is a palindrome
            if i % 2 == 0
                even_count += 1  # Increment even palindrome count
            else
                odd_count += 1   # Increment odd palindrome count
            end
        end
    end

    return (even_count, odd_count)
end

# Examples
println(even_odd_palindrome(3))  # Output: (1, 2)
println(even_odd_palindrome(12)) # Output: (4, 6)