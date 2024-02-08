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
    if text == ""
        return nothing
    else
        return bytes2hex(MD5.digest(text))
    end
end

# Test cases
@assert string_to_md5("Hello world") == "3e25960a79dbc69b674cd4ec67a72c62"
@assert string_to_md5("") == nothing
@assert string_to_md5("12345") == "5e83b664c5d4fb52ab97a22b973f46e"
@assert string_to_md5("Julia") == "74b34701a1b20b3d3c96e57c6ca1a60c"
@assert string_to_md5("Programming") == "6a383f9c779fc91756753d000b9740a0"
