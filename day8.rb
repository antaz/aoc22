#!/usr/bin/env ruby

grid = []
while line = gets
  grid.append(line.chomp.chars.map(&:to_i))
end

tgrid = grid.transpose

rows = grid.length
cols = grid[0].length

c = 0
for i in 1..rows - 2
  for j in 1..cols - 2
    if grid[i][0..j - 1].all? {|v| v < grid[i][j]} or grid[i][j + 1..rows].all? {|v| v < grid[i][j]} or tgrid[j][0..i - 1].all? {|v| v < tgrid[j][i]} or tgrid[j][i + 1..cols].all? {|v| v < tgrid[j][i]}
     c += 1
    end
  end
end

# puts grid.inspect
# puts tgrid.inspect

puts c + 2*(rows + cols - 2)
