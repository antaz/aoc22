#!/usr/bin/env ruby

max = 0
sum = 0

while cal = gets
  if cal.chomp != ""
    sum += cal.chomp.to_i
  else
    max = [sum, max].max
    sum = 0
  end
end

puts max
