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
    # Check if all elements in lst1 are even
    all_even_lst1 = all(iseven, lst1)
    if all_even_lst1
        return "YES"
    end

    # Count the number of odd elements in lst1 and even elements in lst2
    odd_count_lst1 = count(isodd, lst1)
    even_count_lst2 = count(iseven, lst2)

    # Check if it is possible to exchange elements between lst1 and lst2
    if odd_count_lst1 <= even_count_lst2
        return "YES"
    else
        return "NO"
    end
end