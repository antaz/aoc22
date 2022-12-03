#!/usr/bin/env ruby

alpha = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"
sum = 0

while comp = gets
  comp = comp.chomp
  sum += (comp[0..(comp.length / 2) - 1].chars & comp[(comp.length / 2)..comp.length].chars).map {|c| alpha.index(c) + 1}.sum
end

puts sum
