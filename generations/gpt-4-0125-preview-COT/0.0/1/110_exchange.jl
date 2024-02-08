"""
    exchange(lst1::Vector{Int}, lst2::Vector{Int})::String

In this problem, you will implement a function that takes two lists of numbers,
and determines whether it is possible to perform an exchange of elements between
them to make lst1 a list of only even numbers. There is no limit on the number
of exchanged elements between lst1 and lst2. If it is possible to exchange
elements between the lst1 and lst2 to make all the elements of lst1 to be even,
return "YES". Otherwise, return "NO".

!!! note

    It is assumed that the input lists will be non-empty.

# Example

```jldoctest
julia> exchange([1, 2, 3, 4], [1, 2, 3, 4])
"YES"

julia> exchange([1, 2, 3, 4], [1, 5, 3, 4])
"NO"
```
"""
function exchange(lst1::Vector{Int}, lst2::Vector{Int})::String
    # Step 1: Identify Odd Elements in lst1
    odd_in_lst1 = count(x -> x % 2 != 0, lst1)
    
    # Step 2: Identify Even Elements in lst2
    even_in_lst2 = count(x -> x % 2 == 0, lst2)
    
    # Step 3: Compare Counts of Odd and Even Elements
    if even_in_lst2 >= odd_in_lst1
        return "YES"
    else
        return "NO"
    end
end
