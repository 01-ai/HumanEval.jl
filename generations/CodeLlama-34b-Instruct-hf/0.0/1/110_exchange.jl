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
    # Check if all elements of lst1 are even
    if all(iseven, lst1)
        return "YES"
    end

    # Check if there are any even numbers in lst2
    if any(iseven, lst2)
        # If there are, find the first even number in lst2
        even_index = findfirst(iseven, lst2)

        # Swap the first even number in lst2 with the first odd number in lst1
        lst1[1], lst2[even_index] = lst2[even_index], lst1[1]

        # Recursively call the function with the updated lists
        return exchange(lst1, lst2)
    end

    # If there are no even numbers in lst2, return "NO"
    return "NO"
end
