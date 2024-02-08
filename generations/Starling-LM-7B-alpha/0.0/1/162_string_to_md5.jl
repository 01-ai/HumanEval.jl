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
 function string_to_md5(text::String)::Union{Nothing,String}
    if length(text) == 0
        return nothing
    else
        md5_hash = MD5.digest(UTF8String(text))
        return string(md5_hash)
    end
end
