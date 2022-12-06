#!/usr/bin/env ruby

# one idea is to create a matrix of all letters
# [[" ", "D", " "]]
# [["N", "C", " "]]
# [["Z" , "M", "P"]]
#
# transpose and reverse the matrix: 
#
# [["Z", "N", " "]]
# [["M", "C", "D"]]
# [["P" , " ", " "]]
#
# apply the stack operations (push, pop)
#
# [["M"]]
# [["C"]]
# [["P" , "Z", "N", "D"]]
#
# get the last element of each array "MCD"
#


crane = []
while crates = gets
  if crates.start_with?(" 1")
    break
  end
  crane.append(crates.chomp.tr("[]", " ").chars.select.with_index { |v, i| (i % 4) == 1})
end

crane = crane.transpose.map {|v| v.reverse.select { |v| v != " "} }

while op = gets
  if op.start_with?("move")
    op = op.match /^move (\d+) from (\d+) to (\d+)/
    for i in 1..(op[1].to_i)
      crane[op[3].to_i - 1].push(crane[op[2].to_i - 1].pop())
    end
  end
end

puts crane.map(&:last).join("")
