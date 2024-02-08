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
function intersection(interval1::Vector{Int}, interval2::Vector{Int})::String
    function is_prime(num)
        num < 2 && return false
        num == 2 && return true
        for i = 2:ceil(Int, sqrt(num))
            num % i == 0 && return false
        end
        return true
    end

    l = max(interval1[1], interval2[1])
    r = min(interval1[2], interval2[2])
    diff = r - l
    if diff > 0 && is_prime(diff)
        "YES"
    else
        "NO"
    end
end
