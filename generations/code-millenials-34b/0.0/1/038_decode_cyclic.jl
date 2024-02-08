"""
Returns encoded string by cycling groups of three characters.
"""
function encode_cyclic(s::String)::String
    join((length(x) == 3 ? x[2] * x[3] * x[1] : x for x in Iterators.partition(s, 3)))
end

"""
    decode_cyclic(s::String)::String

Takes as input string encoded with `encode_cyclic` function. Returns decoded
string.
"""

function decode_cyclic(s::String)::String
    join((length(x) == 3 ? x[3] * x[1] * x[2] : x for x in Iterators.partition(s, 3)))
end

"""
    encode_rotate(s::String)::String

Returns encoded string by rotating groups of three characters.
"""
function encode_rotate(s::String)::String
    join((length(x) == 3 ? x[2] * x[1] * x[3] : x for x in Iterators.partition(s, 3)))
end

"""
    decode_rotate(s::String)::String

Takes as input string encoded with `encode_rotate` function. Returns decoded
string.
"""
function decode_rotate(s::String)::String
    join((length(x) == 3 ? x[3] * x[2] * x[1] : x for x in Iterators.partition(s, 3)))
end

"""
    encode_reverse(s::String)::String

Returns encoded string by reversing groups of three characters.
"""
function encode_reverse(s::String)::String
    join((length(x) == 3 ? x[3] * x[2] * x[1] : x for x in Iterators.partition(s, 3)))
end

"""
    decode_reverse(s::String)::String

Takes as input string encoded with `encode_reverse` function. Returns decoded
string.
"""
function decode_reverse(s::String)::String
    join((length(x) == 3 ? x[3] * x[2] * x[1] : x for x in Iterators.partition(s, 3)))
end

"""
    encode_caesar(s::String, shift::Int)::String

Returns encoded string by Caesar cipher with shift `shift`.
"""
function encode_caesar(s::String, shift::Int)::String
    join(Char(Int(c) + shift) for c in s)
end

"""
    decode_caesar(s::String, shift::Int)::String

Takes as input string encoded with `encode_caesar` function. Returns decoded
string.
"""
function decode_caesar(s::String, shift::Int)::String
    join(Char(Int(c) - shift) for c in s)
end

"""
    encode_substitute(s::String, dict::Dict{Char, Char})::String

Returns encoded string by substituting characters according to `dict`.
"""
function encode_substitute(s::String, dict::Dict{Char, Char})::String
    join(get(dict, c, c) for c in s)
end

"""
    decode_substitute(s::String, dict::Dict{Char, Char})::String

Takes as input string encoded with `encode_substitute` function. Returns decoded
string.
"""
function decode_substitute(s::String, dict::Dict{Char, Char})::String
    join(get(inv(dict), c, c) for c in s)
end

"""
    encode_vigenere(s::String, key::String)::String

Returns encoded string by Vigenere cipher with `key`.
"""
function encode_vigenere(s::String, key::String)::String
    join((c in 'a':'z' ? Char((Int(c) - Int('a') + Int(key[i % length(key) + 1])) % 26 + Int('a')) :
          c in 'A':'Z' ? Char((Int(c) - Int('A') + Int(key[i % length(key) + 1])) % 26 + Int('A')) :
          c for (i, c) in enumerate(s)))
end

"""
    decode_vigenere(s::String, key::String)::String

Takes as input string encoded with `encode_vigenere` function. Returns decoded
string.
"""
function decode_vigenere(s::String, key::String)::String
    join((c in 'a':'z' ? Char((Int(c) - Int('a') - Int(key[i % length(key) + 1])) % 26 + Int('a')) :
          c in 'A':'Z' ? Char((Int(c) - Int('A') - Int(key[i % length(key) + 1])) % 26 + Int('A')) :
          c for (i, c) in enumerate(s)))
end

"""
    encode_xor(s::String, key::String)::String

Returns encoded string by XOR cipher with `key`.
"""
function encode_xor(s::String, key::String)::String
    join(Char(Int(c) ⊻ Int(key[i % length(key) + 1])) for (i, c) in enumerate(s))
end

"""
    decode_xor(s::String, key::String)::String

Takes as input string encoded with `encode_xor` function. Returns decoded
string.
"""
function decode_xor(s::String, key::String)::String
    join(Char(Int(c) ⊻ Int(key[i % length(key) + 1])) for (i, c) in enumerate(s))
end

"""
    encode_morse(s::String)::String

Returns encoded string by Morse code.
"""
function encode_morse(s::String)::String
    join(" " * get(morse_code, c, "") for c in s)
end

"""
    decode_morse(s::String)::String

Takes as input string encoded with `encode_morse` function. Returns decoded
string.
"""
function decode_morse(s::String)::String
    join(get(inv(morse_code), s, "") for s in split(s, " "))
end

morse_code = Dict{Char, String}(
    'a' => ".-", 'b' => "-...", 'c' => "-.-.", 'd' => "-..", 'e' => ".", 'f' => "..-.",
    'g' => "--.", 'h' => "....", 'i' => "..", 'j' => ".---", 'k' => "-.-", 'l' => ".-..",
    'm' => "--", 'n' => "-.", 'o' => "---", 'p' => ".--.", 'q' => "--.-", 'r' => ".-.",
    's' => "...", 't' => "-", 'u' => "..-", 'v' => "...-", 'w' => ".--", 'x' => "-..-",
    'y' => "-.--", 'z' => "--..", '1' => ".----", '2' => "..---", '3' => "...--",
    '4' => "....-", '5' => ".....", '6' => "-....", '7' => "--...", '8' => "---..",
    '9' => "----.", '0' => "-----", ' ' => "/"
)

"""
    encode_base64(s::String)::String

Returns encoded string by Base64.
"""
function encode_base64(s::String)::String
    base64encode(s)
end

"""
    decode_base64(s::String)::String

Takes as input string encoded with `encode_base64` function. Returns decoded
string.
"""
function decode_base64(s::String)::String
    base64decode(s)
end

"""
    encode_url(s::String)::String

Returns encoded string by URL encoding.
"""
function encode_url(s::String)::String
    HTTP.escapeuri(s)
end

"""
    decode_url(s::String)::String

Takes as input string encoded with `encode_url` function. Returns decoded
string.
"""
function decode_url(s::String)::String
    HTTP.unescapeuri(s)
end

"""
    encode_html(s::String)::String

Returns encoded string by HTML entities.
"""
function encode_html(s::String)::String
    join(get(html_entities, c, c) for c in s)
end

"""
    decode_html(s::String)::String

Takes as input string encoded with `encode_html` function. Returns decoded
string.
"""
function decode_html(s::String)::String
    join(get(inv(html_entities), s, s) for s in split(s, "&#"))
end

html_entities = Dict{Char, String}(
    '&' => "&#38;", '<' => "&#60;", '>' => "&#62;", '"' => "&#34;", '\'' => "&#39;",
    '`' => "&#96;", '=' => "&#61;", '!' => "&#33;", '(' => "&#40;", ')' => "&#41;",
    '[' => "&#91;", ']' => "&#93;", '{' => "&#123;", '}' => "&#125;", '|' => "&#124;",
    '^' => "&#94;", '~' => "&#126;", ',' => "&#44;", '.' => "&#46;", ':' => "&#58;",
    ';' => "&#59;", '?' => "&#63;", '#' => "&#35;", '*' => "&#42;", '+' => "&#43;",
    '/' => "&#47;", '\\' => "&#92;", ' ' => "&#32;", '\t' => "&#9;", '\n' => "&#10;",
    '\r' => "&#13;", '\f' => "&#12;", '\v' => "&#11;", '\0' => "&#0;"
)

