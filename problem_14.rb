def collatz(snum)
  length = 0
  while snum != 1 do
    if snum.even?
      n = snum/2
    elsif snum.odd?
      n = (3*snum) + 1
    end
    length = length + 1
  end
  return length
end

max_length = 0
max_integer = 0

500001.step(1000000, 2).each do |n|
  l = collatz(n)
  if l > max_length
    max_length = l
    max_integer = n
  end
end

puts max_integer
