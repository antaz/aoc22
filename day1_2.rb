#!/usr/bin/env ruby

sum = 0
elves = []
IO.foreach("input") do |cal|
  if cal.chomp != ""
    sum += cal.chomp.to_i
  else
    elves.append(sum)
    sum = 0
  end
end

elves.sort!.reverse!
puts [elves[0], elves[1], elves[2]].sum
