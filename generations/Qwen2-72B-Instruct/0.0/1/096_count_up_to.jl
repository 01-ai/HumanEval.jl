"""
    count_up_to(n::Int)::Vector{Int}

Implement a function that takes an non-negative integer and returns an array of
the first n integers that are prime numbers and less than n.

# Example

```jldoctest
julia> count_up_to(5)
2-element Vector{Int64}:
 2
 3

julia> count_up_to(11)
4-element Vector{Int64}:
 2
 3
 5
 7

julia> count_up_to(0)
Int64[]

julia> count_up_to(20)
8-element Vector{Int64}:
  2
  3
  5
  7
 11
 13
 17
 19

julia> count_up_to(1)
Int64[]

julia> count_up_to(18)
7-element Vector{Int64}:
  2
  3
  5
  7
 11
 13
 17
```
"""
function count_up_to(n::Int)::Vector{Int}
    is_prime(x) = all((y -> x % y != 0), 2:x-1) && x > 1
    primes = Int[]
    for i in 2:n
        if is_prime(i)
            push!(primes, i)
            if length(primes) == n
                break
            end
        end
    end
    return primes
end

# Check function to verify the correctness of the solution
function check()
    @assert count_up_to(5) == [2, 3]
    @assert count_up_to(11) == [2, 3, 5, 7]
    @assert count_up_to(0) == Int[]
    @assert count_up_to(20) == [2, 3, 5, 7, 11, 13, 17, 19]
    @assert count_up_to(1) == Int[]
    @assert count_up_to(18) == [2, 3, 5, 7, 11, 13, 17]
    return true
end

# Run the check function
check()
function count_up_to(n::Int)::Vector{Int}
    is_prime(x) = x > 1 && all((y -> x % y != 0), 2:isqrt(x))
    primes = Int[]
    for i in 2:n
        if is_prime(i)
            push!(primes, i)
        end
        if length(primes) == n-1
            break
        end
    end
    return primes
end

# Check function to verify the correctness of the solution
function check()
    @assert count_up_to(5) == [2, 3]
    @assert count_up_to(11) == [2, 3, 5, 7]
    @assert count_up_to(0) == Int[]
    @assert count_up_to(20) == [2, 3, 5, 7, 11, 13, 17, 19]
    @assert count_up_to(1) == Int[]
    @assert count_up_to(18) == [2, 3, 5, 7, 11, 13, 17]
    return true
end

# Run the check function
check()
function count_up_to(n::Int)::Vector{Int}
    is_prime(x) = x > 1 && all((y -> x % y != 0), 2:isqrt(x))
    primes = Int[]
    for i in 2:n
        if is_prime(i)
            push!(primes, i)
        end
    end
    return primes
end

# Check function to verify the correctness of the solution
function check()
    @assert count_up_to(5) == [2, 3]
    @assert count_up_to(11) == [2, 3, 5, 7]
    @assert count_up_to(0) == Int[]
    @assert count_up_to(20) == [2, 3, 5, 7, 11, 13, 17, 19]
    @assert count_up_to(1) == Int[]
    @assert count_up_to(18) == [2, 3, 5, 7, 11, 13, 17]
    return true
end

# Run the check function
check()
