#
# B - Caesar Cipher
#
S = gets.chomp.chars
T = gets.chomp.chars


Alphabets = {}
("a".."z").to_a.each_with_index do |v,i|
  Alphabets[v] = i
end
Numbers = Alphabets.invert

def ceaser(k,v)
  w = Alphabets[v] + k
  w = w - 26 if w >= 26
  Numbers[ w ]
end

w = Alphabets[ T[0] ]  - Alphabets[ S[0] ]  
if w < 0 then
  w = w + 26
end


str = ""
S.each do |c|
  str = str.concat(ceaser(w,c))
end
if str.chars == T then
  puts "Yes"
else
  puts "No"
end




