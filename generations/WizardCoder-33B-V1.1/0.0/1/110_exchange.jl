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
    # Check if there are any odd numbers in lst1
    if any(isodd, lst1)
        # Check if there are any even numbers in lst2
        if any(iseven, lst2)
            return "YES"
        else
            return "NO"
        end
    else
        return "YES"
    end
end

# Test cases
println(exchange([1, 2, 3, 4], [1, 2, 3, 4])) # "YES"
println(exchange([1, 2, 3, 4], [1, 5, 3, 4])) # "NO"
println(exchange([1, 3, 5, 7], [2, 4, 6, 8])) # "YES"
println(exchange([1, 3, 5, 7], [1, 3, 5, 7])) # "YES"
println(exchange([2, 4, 6, 8], [1, 3, 5, 7])) # "NO" 
