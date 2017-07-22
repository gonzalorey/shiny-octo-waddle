# given 'haystack' a 'needle' a pair of strings, return the indices of anagrams
# of 'needle' inside of 'haystack'
def get_anagram_indices(haystack, needle)
  raise ArgumentError unless haystack.is_a? String
  raise ArgumentError unless needle.is_a? String

  output = []

  for pos in 0..(haystack.length - needle.length)
    output << pos if is_anagram(haystack[pos, needle.length], needle)
  end

  return output
end

private

def is_anagram(s1, s2)
  return false unless s1.length == s2.length

  aux = s2.dup

  s1.each_char do |s|
    index = aux.index(s)
    return false unless index
    aux.slice!(index)
  end

  return true
end
