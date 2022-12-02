#!/usr/bin/env ruby

values = { "A X" => 4, "A Y" => 8, "A Z" => 3,
           "B X" => 1, "B Y" => 5, "B Z" => 9,
           "C X" => 7, "C Y" => 2, "C Z" => 6
         }
sum = 0
IO.foreach("input") do |round|
  sum += values[round.chomp]
end

puts sum
