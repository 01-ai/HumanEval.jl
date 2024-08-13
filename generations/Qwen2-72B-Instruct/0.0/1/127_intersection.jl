"""
    intersection(interval1::Vector{Int}, interval2::Vector{Int})::String

You are given two intervals, where each interval is a pair of integers. For
example, interval = (start, end) = (1, 2). The given intervals are closed which
means that the interval (start, end) includes both start and end. For each given
interval, it is assumed that its start is less or equal its end. Your task is to
determine whether the length of intersection of these two intervals is a prime
number. Example, the intersection of the intervals (1, 3), (2, 4) is (2, 3)
which its length is 1, which not a prime number. If the length of the
intersection is a prime number, return "YES", otherwise, return "NO". If the two
intervals don't intersect, return "NO".

# Examples

```jldoctest
julia> intersection([1, 2], [2, 3])
"NO"

julia> intersection([-1, 1], [0, 4])
"NO"

julia> intersection([-3, -1], [-5, 5])
"YES"
```
"""

using Primes

"""
    intersection(interval1::Vector{Int}, interval2::Vector{Int})::String

Determines if the length of the intersection of two given intervals is a prime
number. Returns "YES" if the length is prime, otherwise returns "NO". If the
intervals do not intersect, returns "NO".
"""
function intersection(interval1::Vector{Int}, interval2::Vector{Int})::String
    start_max = max(interval1[1], interval2[1])
    end_min = min(interval1[2], interval2[2])
    intersection_length = end_min - start_max + 1

    if intersection_length > 0 && isprime(intersection_length)
        return "YES"
    else
        return "NO"
    end
end