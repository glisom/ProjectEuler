a = [1,1]
while a[-2] + a[-1] < 4000000
  a << a[-2] + a[-1]
end
sum = 0
a.each { |x| sum+= x if x.even? }

puts sum
