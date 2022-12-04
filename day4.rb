#!/usr/bin/env ruby

count = 0

while pairs = gets
  pairs = pairs.chomp.split(",").map { |c| c.split("-") }.flatten.map(&:to_i)
  if ((pairs[0] <= pairs[2]) and (pairs[1] >= pairs[3])) or ((pairs[0] >= pairs[2]) and (pairs[1] <= pairs[3]))
    count += 1
  end
end

puts count
