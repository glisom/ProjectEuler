def even_num (n)
    return n/2
end

def odd_num (n)
    return (3*n) + 1
end

def collatz (x)
    terms = 0
    while x != 1
        if x.even?
            x = even_num(x)
            terms = terms + 1
        elsif x.odd?
            x = odd_num(x)
            terms = terms + 1
        else
        end
    end
    return terms
end

x = 0
number = 0
for i in 10..1000000
    y = collatz(i)
    if y > x
        x = y
        number = i
    else
    end
end

puts x
puts number
