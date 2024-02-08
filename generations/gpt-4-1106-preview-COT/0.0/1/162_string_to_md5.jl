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
    # Step 1: Check if the input text is empty
    if isempty(text)
        return nothing
    end

    # Step 2: Compute the MD5 hash of the string
    md5_hash = md5(text)

    # Step 3: Convert the MD5 hash to a hexadecimal string representation
    hex_string = bytes2hex(md5_hash)

    # Step 4: Return the hexadecimal string
    return hex_string
end
