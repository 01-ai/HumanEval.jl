"""
    palindrome_with_append(s::String)::String

Find the shortest palindrome that begins with a supplied string. Algorithm idea
is simple:

  - Find the longest postfix of supplied string that is a palindrome.
  - Append to the end of the string reverse of a string prefix that comes before
    the palindromic suffix.

# Examples

```jldoctest
julia> palindrome_with_append("")
""

julia> palindrome_with_append("cat")
"catac"

julia> palindrome_with_append("cata")
"catac"
```
"""
function palindrome_with_append(s::String)::String
    # Step 1: Check for empty string
    if isempty(s)
        return ""
    end

    n = length(s)
    # Convert string to array for easier manipulation
    s_array = collect(s)

    # Step 2: Identify longest palindromic suffix
    for i in 1:n
        # Check if the substring from i to n is a palindrome
        if s_array[i:end] == reverse(s_array[i:end])
            # Step 3: Construct palindrome
            # Find the prefix before the palindromic suffix
            prefix = s_array[1:i-1]
            # Append reverse of prefix to the original string
            return join(s_array) * join(reverse(prefix))
        end
    end

    # Fallback, in case no palindromic suffix is found, which shouldn't happen due to the logic
    return s
end
