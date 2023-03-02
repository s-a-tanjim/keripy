
# Mappings between Base64 Encode Index and Decode Characters
#  B64ChrByIdx is dict where each key is a B64 index and each value is the B64 char
#  B64IdxByChr is dict where each key is a B64 char and each value is the B64 index
# Map Base64 index to char
B64ChrByIdx = dict((index, char) for index, char in enumerate([chr(x) for x in range(65, 91)]))
B64ChrByIdx.update([(index + 26, char) for index, char in enumerate([chr(x) for x in range(97, 123)])])
B64ChrByIdx.update([(index + 52, char) for index, char in enumerate([chr(x) for x in range(48, 58)])])
B64ChrByIdx[62] = '-'
B64ChrByIdx[63] = '_'

# Utilities
def isign(i):
    """
    Integer sign function
    Returns:
        (int): 1 if i > 0, -1 if i < 0, 0 otherwise

    """
    return (1 if i > 0 else -1 if i < 0 else 0)

def sceil(r):
    """
    Symmetric ceiling function
    Returns:
       sc (int): value that is symmetric ceiling of r away from zero

    Because int() provides a symmetric floor towards zero, just inc int(r) by:
     1 when r - int(r) >  0  (r positive)
    -1 when r - int(r) <  0  (r negative)
     0 when r - int(r) == 0  (r integral already)
    abs(r) > abs(int(r) or 0 when abs(r)
    """
    return (int(r) + isign(r - int(r)))


# Map char to Base64 index
B64IdxByChr = {char: index for index, char in B64ChrByIdx.items()}

def b64ToInt(s):
    """
    Returns conversion of Base64 str s or bytes to int
    """
    if not s:
        raise ValueError("Empty string, conversion undefined.")
    if hasattr(s, 'decode'):
        s = s.decode("utf-8")
    i = 0
    for e, c in enumerate(reversed(s)):
        i |= B64IdxByChr[c] << (e * 6)  # same as i += B64IdxByChr[c] * (64 ** e)
    return i



def codeB64ToB2(s):
    """
    Returns conversion (decode) of Base64 chars to Base2 bytes.
    Where the number of total bytes returned is equal to the minimun number of
    octets sufficient to hold the total converted concatenated sextets from s,
    with one sextet per each Base64 decoded char of s. Assumes no pad chars in s.
    Sextets are left aligned with pad bits in last (rightmost) byte.
    This is useful for decoding as bytes, code characters from the front of
    a Base64 encoded string of characters.
    """
    i = b64ToInt(s)
    i <<= 2 * (len(s) % 4)  # add 2 bits right zero padding for each sextet
    n = sceil(len(s) * 3 / 4)  # compute min number of ocetets to hold all sextets
    return (i.to_bytes(n, 'big'))

res = codeB64ToB2('B')

print(type(res))
print(type(res[0]))
print(res[0])
_message = res.decode()

print(res)
print(_message)
