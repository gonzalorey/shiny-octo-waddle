def getAnagramIndices(haystack, needle)
  output = []

  for pos in 0..(haystack.length - needle.length)
    p "Pos: #{pos}, haystack: #{haystack[pos, needle.length]}, needle: #{needle}"
    if is_anagram(haystack[pos, needle.length], needle)
      output << pos
    end
    p "after=haystack: #{haystack[pos, needle.length]}, needle: #{needle}"
  end

  return output
end

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
