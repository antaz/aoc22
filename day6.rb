#!/usr/bin/env ruby

# simple idea is to just test if duplicates occur every
# substring of length 4.
# Array.length == Array.to_set.length  <=> no duplicates

require 'set' # unsure why this was required for `.to_set`

while ds = gets
  s = ds.chomp
  for i in (0..(s.length - 3))
    if s[i..i+3].chars.length == s[i..i+3].chars.to_set.length
      puts i + 4
      break
    end
  end
end
