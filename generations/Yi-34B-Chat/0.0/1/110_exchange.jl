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
    # Initialize result
    result = "NO"

    # Loop through lst1 and check if any element is odd
    for i in lst1
        if i % 2 != 0
            # If there is an odd element, try to exchange it with an element from lst2
            # until we find an even one
            for j in lst2
                if j % 2 == 0
                    # Exchange the elements
                    lst1[i], lst2[j] = lst2[j], lst1[i]
                    # Update the result
                    result = "YES"
                    break
                end
            end
            # If we didn't find an even element in lst2, we can't make lst1 all even
            if result == "NO"
                break
            end
        end
    end

    return result
end
