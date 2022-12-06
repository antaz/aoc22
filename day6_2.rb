#!/usr/bin/env ruby

require 'set'

while ds = gets
  s = ds.chomp
  for i in (0..(s.length - 13))
    if s[i..i+13].chars.length == s[i..i+13].chars.to_set.length
      puts i + 14
      break
    end
  end
end
