#!/usr/bin/env ruby

# two ranges [a,b] and [a',b'] overlap iff
# a or b in [a',b']
# or a' or b' in [a,b]

count = 0

while pairs = gets
  pairs = pairs.chomp.split(",").map { |c| c.split("-") }.flatten.map(&:to_i)
  if (pairs[0].between?(pairs[2],pairs[3])) or (pairs[1].between?(pairs[2],pairs[3])) or (pairs[2].between?(pairs[0],pairs[1])) or (pairs[3].between?(pairs[0],pairs[1]))
    count += 1
  end
end

puts count
