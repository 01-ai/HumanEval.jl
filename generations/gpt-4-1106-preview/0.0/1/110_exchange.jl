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
    # Count the number of even and odd numbers in lst1 and lst2
    even_count_lst1 = count(iseven, lst1)
    odd_count_lst1 = length(lst1) - even_count_lst1
    even_count_lst2 = count(iseven, lst2)
    
    # Check if there are enough even numbers in lst2 to exchange with odd numbers in lst1
    if odd_count_lst1 <= even_count_lst2
        return "YES"
    else
        return "NO"
    end
end

# Example usage:
println(exchange([1, 2, 3, 4], [1, 2, 3, 4]))  # Output: "YES"
println(exchange([1, 2, 3, 4], [1, 5, 3, 4]))  # Output: "NO"
