#
# C - Graph Isomorphism
#
N,M = gets.chomp.split.map(&:to_i)
ab = []
cd = []

M.times do |i|
  ab[i] = gets.chomp.split.map(&:to_i)
end

M.times do |i|
  cd[i] = gets.chomp.split.map(&:to_i)
end

x = []
w = ab.flatten.sort[0]
#pp ab.flatten.sort
ctr = 0
ab.flatten.sort.each do |i|
  if w == i then
    ctr += 1
  else
    x << ctr
    w = i
    ctr = 1
  end
end
x << ctr 

y = []
w = cd.flatten.sort[0]
#pp cd.flatten.sort
ctr = 0
cd.flatten.sort.each do |i|
  if w == i then
    ctr += 1
  else
    y << ctr
    w = i
    ctr = 1
  end
end
y << ctr 

if x.sort == y.sort then
  puts "Yes"
else
  puts "No"
end
