require 'prime'

# divisors = 0
#
# def triangular(n)
#   t = (n *(n + 1))/2
#   return t
# end
#
# #found at rosettacode.org
# def factors(x)
#   arr = Array.new
#   (1..x).each do |n|
#     if (x % n).zero?
#       arr << n
#     end
#   end
#   return arr.count
# end
#
# while divisors <= 500 do
# for i in 9000000000..10000000000 do
#   divisors = factors(triangular(10000))
# end
# end
# puts divisors
def nbr_factors(n)
  Prime.prime_division(n).reduce(1){ |t,(_,m)| t * (m+1) }
end

puts nbr_factors(2106)
puts nbr_factors(45)

def first_triangle_nbr_with_min_nbr_divisors(min_nbr_divisors)
  tri = 0
  1.step.each do |i|
    tri += i
    break tri if nbr_factors(tri) >= min_nbr_divisors
  end
end

puts first_triangle_nbr_with_min_nbr_divisors   6 #=>         28
puts first_triangle_nbr_with_min_nbr_divisors  20 #=>        528
puts first_triangle_nbr_with_min_nbr_divisors 501 #=> 76_576_500
