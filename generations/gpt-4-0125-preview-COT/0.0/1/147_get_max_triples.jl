"""
    get_max_triples(n::Int)::Int

You are given a positive integer n. You have to create an integer array a of length n.
For each i (1 ≤ i ≤ n), the value of a[i] = i * i - i + 1.
Return the number of triples (a[i], a[j], a[k]) of a where i < j < k,
and a[i] + a[j] + a[k] is a multiple of 3.

# Examples

```jldoctest
julia> get_max_triples(5)  # a = [1, 3, 7, 13, 21] The only valid triple is (1, 7, 13).
1
```
"""

### Step-by-Step Outline

1. **Initialize the array `a`**: Create an array `a` of length `n` where each element `a[i]` is calculated using the formula `i * i - i + 1`.

2. **Calculate the remainders**: For each element in the array `a`, calculate its remainder when divided by 3. This is because the sum of three numbers is divisible by 3 if and only if either all three numbers are divisible by 3 or they have one of each remainder when divided by 3 (0, 1, 2).

3. **Count the remainders**: Keep a count of how many numbers have a remainder of 0, 1, and 2 when divided by 3. This can be done using three variables or an array of size 3.

4. **Calculate the number of valid triples**: Use the counts of numbers with remainders 0, 1, and 2 to calculate the number of valid triples. There are two cases for a valid triple:
    - All three numbers have a remainder of 0. The number of such triples can be calculated using the combination formula `C(n, 3)` where `n` is the count of numbers with remainder 0.
    - One number each with remainders 0, 1, and 2. The number of such triples is the product of the counts of numbers with remainders 0, 1, and 2.

5. **Return the total number of valid triples**: Sum the counts from the two cases above to get the total number of valid triples.

### Julia Code Implementation

