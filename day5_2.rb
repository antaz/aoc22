#!/usr/bin/env ruby

# same idea as part 1 except reverse the order

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
    crane[op[3].to_i - 1] += crane[op[2].to_i - 1].slice!(-(op[1].to_i)..).reverse
  end
end

puts crane.map(&:last).join("")
