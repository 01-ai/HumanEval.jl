"""
    factorize(n::Int)::Vector{Int}

Return list of prime factors of given integer in the order from smallest to
largest. Each of the factors should be listed number of times corresponding to
how many times it appeares in factorization. Input number should be equal to the
product of all factors.

# Examples

```jldoctest
julia> factorize(8)
3-element Vector{Int64}:
 2
 2
 2

julia> factorize(25)
2-element Vector{Int64}:
 5
 5

julia> factorize(70)
3-element Vector{Int64}:
 2
 5
 7
```
"""
function factorize(n::Int)::Vector{Int}
    factors = Int[]  # Initialize an empty array to store factors
    divisor = 2  # Start with the smallest prime number

    while n >= divisor^2  # No need to check divisors greater than sqrt(n)
        while n % divisor == 0  # While divisor is a factor of n
            push!(factors, divisor)  # Add divisor to factors list
            n ÷= divisor  # Divide n by divisor for further factorization
        end
        divisor += 1  # Move to the next potential divisor
    end

    # If n is greater than 1, it means n is a prime number itself
    if n > 1
        push!(factors, n)
    end

    return factors
end
