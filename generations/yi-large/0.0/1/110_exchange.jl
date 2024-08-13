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
    # First, check if all numbers in lst1 are even
    if all(isodd, lst1)
        return "NO"  # If all are odd, it's impossible to make them even
    end
    
    # Now, check if there's at least one even number in lst2
    if all(isodd, lst2)
        return "NO"  # If all are odd, it's impossible to exchange for even
    end
    
    # If we reach here, there's at least one even number in lst2
    # and not all numbers in lst1 are odd.
    
    # Check if it's possible to exchange odd numbers in lst1 with even numbers in lst2
    odds_in_lst1 = filter(isodd, lst1)
    evens_in_lst2 = filter(iseven, lst2)
    
    # If the number of odd numbers in lst1 is less than or equal to the number of even numbers in lst2,
    # it's possible to exchange and make all numbers in lst1 even
    if length(odds_in_lst1) <= length(evens_in_lst2)
        return "YES"
    else
        return "NO"
    end
end

# Example usage:
# julia> exchange([1, 2, 3, 4], [1, 2, 3, 4])
# "YES"
# 
# julia> exchange([1, 2, 3, 4], [1, 5, 3, 4])
# "NO"
