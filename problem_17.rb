require 'to_words'
sum_total = 0
for i in 1..1000
    x = i.to_words
    x = x.delete(' ')
    sum_total += x.length
end

puts sum_total
