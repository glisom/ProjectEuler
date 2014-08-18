require 'prime'
sum = 0
n = 2_000_000.to_i
Prime.each(n) do |p|
  sum += p
end
puts sum
