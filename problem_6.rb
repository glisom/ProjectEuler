def sum_sqr(upto)
  a = 0
  (1..upto).each do |x|
    a += x**2
  end
  a
end

def sqr_sum(upto)
  a = 0
  (1..upto).each do |y|
    a += y
  end
  a**2
end

puts sqr_sum(100) - sum_sqr(100)
