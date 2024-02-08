using MD5

"""
    string_to_md5(text::String)::Union{Nothing,String}

Given a string `text`, return its md5 hash equivalent string. If "text" is an
empty string, return `nothing`.

# Examples

```jldoctest
julia> string_to_md5("Hello world")
"3e25960a79dbc69b674cd4ec67a72c62"
```
"""

using MD5

function string_to_md5(text::String)::Union{Nothing,String}
    # Check if the input string is empty
    if isempty(text)
        # If it is, return nothing
        return nothing
    else
        # If it's not, compute the md5 hash of the string
        md5_hash = bytes2hex(MD5.md5(text))
        # Return the md5 hash as a string
        return md5_hash
    end
end
