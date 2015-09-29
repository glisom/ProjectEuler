require 'mathn'

def factorial_recursive(n)
  n.zero? ? 1 : n * factorial_recursive(n - 1)
end

x = factorial_recursive(100)

x = x.to_s.split(//).map { |e| e.to_i }.reduce(:+)
puts x
