divisors = 0

def triangular(n)
  t = (n *(n + 1))/2
  return t
end

#found at rosettacode.org
def factors(x)
  arr = Array.new
  (1..x).each do |n|
    if (x % n).zero?
      arr << n
    end
  end
  return arr.count
end

while divisors <= 500 do
for i in 9000000000..10000000000 do
  divisors = factors(triangular(10000))
end
end
puts divisors
