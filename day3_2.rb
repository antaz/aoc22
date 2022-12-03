#!/usr/bin/env ruby

alpha = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"
sum = 0
rucksacks = []

IO.foreach("input") do |comp|
  rucksacks.append(comp.chomp)
  if rucksacks.length == 3
    sum += (rucksacks[0].chars & rucksacks[1].chars & rucksacks[2].chars).map {|c| alpha.index(c) + 1}.sum
    rucksacks = []
  end
end

puts sum
