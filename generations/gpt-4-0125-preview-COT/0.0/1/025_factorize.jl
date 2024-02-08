"""
    factorize(n::Int)::Vector{Int}

Return list of prime factors of given integer in the order from smallest to
largest. Each of the factors should be listed number of times corresponding to
how many times it appeares in factorization. Input number should be equal to the
product of all factors.

# Examples

```jldoctest
julia> factorize(8)
3-element Vector{Int64}:
 2
 2
 2

julia> factorize(25)
2-element Vector{Int64}:
 5
 5

julia> factorize(70)
3-element Vector{Int64}:
 2
 5
 7
```
"""

### Step-by-Step Outline

1. **Initialize Variables**: Start by initializing an empty vector to store the prime factors of the given number `n`.

2. **Handle Edge Cases**: If `n` is less than 2, return an empty vector since numbers less than 2 do not have prime factors.

3. **Factorization Process**:
    - Start dividing `n` by the smallest prime number, 2, and continue dividing by 2 until it is no longer divisible by 2. Each time division is successful (i.e., the remainder is 0), append 2 to the list of factors.
    - Once `n` is no longer divisible by 2, start checking for divisibility starting from 3 and increase by 2 (since even numbers other than 2 cannot be prime). For each divisor, check if `n` is divisible by it. If so, divide `n` by this divisor, append the divisor to the list of factors, and continue this process until `n` is no longer divisible by this divisor.
    - Continue this process with increasing odd numbers until the divisor exceeds the square root of `n`. The reason for stopping at the square root is that if `n` is not divisible by any number less than or equal to its square root, then `n` must be a prime number itself.

4. **Final Check**: After the loop, if `n` is greater than 2, it means `n` is a prime number that is a factor of itself. Append `n` to the list of factors.

5. **Return Result**: Return the vector containing all the prime factors of the given number `n`.

### Julia Code Implementation

