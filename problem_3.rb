require "prime"

def problem_three(num)
    last_prime = num.prime_division.last
    last_prime[0]
end
puts problem_three(600851475143)
