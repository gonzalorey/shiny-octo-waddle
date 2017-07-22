# given 'haystack' a 'needle' a pair of strings, return the indices of anagrams
# of 'needle' inside of 'haystack'
def get_anagram_indices(haystack, needle)
  raise ArgumentError unless haystack.is_a? String
  raise ArgumentError unless needle.is_a? String

  output = []

  for pos in 0..(haystack.length - needle.length)
    if is_anagram(haystack[pos, needle.length], needle)
      output << pos
    end
  end

  return output
end

private

def is_anagram(s1, s2)
  aux = s2.dup

  if s1.length != s2.length
    return false
  end

  s1.each_char do |s|
    index = aux.index(s)
    if index
        aux.slice!(index)
    else
        return false
    end
  end

  return true
end
