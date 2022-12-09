#!/usr/bin/env ruby

grid = []
while line = gets
  grid.append(line.chomp.chars.map(&:to_i))
end

tgrid = grid.transpose

rows = grid.length
cols = grid[0].length

def first_index arr, v
  for i in 0..arr.length - 1
    if arr[i] >= v
      return i+1
    end
  end
  return arr.length
end

m = 0
for i in 1..rows - 2
  for j in 1..cols - 2
    v = grid[i][j]
    left = grid[i][..j - 1].reverse
    right = grid[i][j + 1..]

    up = tgrid[j][..i - 1].reverse
    down = tgrid[j][i + 1..]

    m = [first_index(left, v) * first_index(right, v) * first_index(up, v) * first_index(down, v), m].max
  end
end

puts m
