#!/usr/bin/env ruby

class File
  attr_accessor :name, :size, :type, :items

  def initialize name, type, size
    @name = name
    @type = type
    @size = size
    @items = []
  end

  def insert item
    @items.append(item)
    @size += item.size
  end

end

$solutions = []

def find(fs)
  if fs.items.empty?
    return 0
  else
    if fs.size <= 100000
      $solutions.append(fs.size)
    end
    for f in fs.items
      find(f)
    end
  end
end


fs = File.new("/", "d", 0)
path = [fs]

while line = gets

  if line =~ /cd \//
    next
  elsif line =~ /cd .+/
    d = /cd (.+)/.match(line)[1]
    if d == ".."
      l = path.pop
      path.last.size += l.size
    else
      path.push(path.last.items.find{ |item| item.name == d})
    end
  elsif line =~ /dir .*/
    dir = /dir (.*)/.match(line)[1]
    path.last.insert(File.new(dir, "d", 0))
  elsif line =~ /\d+ .+/
    f_size,f_name = /(\d+) (.+)/.match(line)[1..]
    path.last.insert(File.new(f_name, "f", f_size.to_i))
  end

end

fs.size += path.last.size

find(fs)

puts $solutions
