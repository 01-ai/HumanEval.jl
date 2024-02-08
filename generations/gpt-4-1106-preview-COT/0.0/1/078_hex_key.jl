"""
    hex_key(num::String)::Int

You have been tasked to write a function that receives a hexadecimal number as a
string and counts the number of hexadecimal digits that are primes (prime
number, or a prime, is a natural number greater than 1 that is not a product of
two smaller natural numbers). Hexadecimal digits are 0, 1, 2, 3, 4, 5, 6, 7, 8,
9, A, B, C, D, E, F. Prime numbers are 2, 3, 5, 7, 11, 13, 17,... So you have to
determine a number of the following digits: 2, 3, 5, 7, B (=decimal 11), D
(=decimal 13). Note: you may assume the input is always correct or empty string,
and symbols A,B,C,D,E,F are always uppercase.

# Examples

```jldoctest
julia> hex_key("AB")
1

julia> hex_key("1077E")
2

julia> hex_key("ABED1A33")
4

julia> hex_key("123456789ABCDEF0")
6

julia> hex_key("2020")
2
```
"""
function hex_key(num::String)::Int
    # Step 2: Define the set of prime hexadecimal digits
    prime_hex_digits = Set(['2', '3', '5', '7', 'B', 'D'])
    
    # Step 3: Initialize the counter
    prime_count = 0
    
    # Step 4: Iterate over each character in the input string
    for digit in num
        # Step 5 & 6: Check if the character is a prime hexadecimal digit and increment the counter
        if digit in prime_hex_digits
            prime_count += 1
        end
    end
    
    # Step 7: Return the counter
    return prime_count
end
