def is_palidrome?(n)
  n == n.to_s.reverse.to_i
end

palidromes = []

n = 100.upto(999)
n.each do |t|
  n.each do |v|
    prod = t * v
    if is_palidrome?(prod)
      palidromes << prod
    end
  end
end

puts palidromes.max
