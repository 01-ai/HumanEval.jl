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
    # Step 1: Partition the string into groups of three characters
    groups = Iterators.partition(s, 3)
    
    # Step 2: Reverse the cyclic shift for each group
    decoded_groups = (length(x) == 3 ? x[3] * x[1] * x[2] : x for x in groups)
    
    # Step 3: Join the groups to form the decoded string
    decoded_string = join(decoded_groups)
    
    # Step 4: Return the decoded string
    return decoded_string
end
