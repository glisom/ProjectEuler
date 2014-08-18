sum = 1000
a = (1..sum / 2).to_a.find { |a|
  (sum * (sum / 2 - a) % (sum - a)).zero?
}
b = sum * (sum / 2 - a) / (sum - a)
puts "Product is #{a * b * (sum - a - b)}."
