sum = 0
for i in 1..999 do
  if i % 5 == 0
     sum += i
  elsif i % 3 == 0
    sum += i
  end
  i += 1
  #puts sum
end
puts sum
puts i
#Answer 233168
