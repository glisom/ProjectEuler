require 'matrix'

mat = Matrix.build(20,20)
File.open('matrix.txt') do |f|
      mat = Matrix[*f.each_line.map { |l| l.split.map(&:to_i) }]
    end

def horizontal(matrix)
  sum = 0
  for i in 0..19 do
    for j in 0..19 do
      product = matrix.row(i)[j..j+3].each.inject(1) {|product, digit| product * digit}
      if product > sum
        sum = product
      end
    end
  end
  puts "The largest product going left to right in the matrix is #{sum}."
end

def vertical(matrix)
  sum = 0
  for i in 0..19 do
    for j in 0..19 do
      product = matrix.column(i)[j..j+3].each.inject(1) {|product, digit| product * digit}
      if product > sum
        sum = product
      end
    end
  end
  puts "The largest product going up and down in the matrix is #{sum}."
end

def diagonal1(matrix)
  max = 0
  for i in 0..16 do
    for j in 0..16 do
      product = matrix.row(j)[i] * matrix.row(j+1)[i+1] * matrix.row(j+2)[i+2] * matrix.row(j+3)[i+3]
      if product > max
        max = product
      end
    end
  end
  puts "The largest product going diagonally:right in the matrix is #{max}"
end

def diagonal2(matrix)
  max = 0
  for i in 0..16 do
    for j in 0..16 do
      product = matrix.row(j)[i+3] * matrix.row(j+1)[i+2] * matrix.row(j+2)[i+1] * matrix.row(j+3)[i]
      if product > max
        max = product
      end
    end
  end
  puts "The largest product going diagonally:left in the matrix is #{max}"
end

horizontal(mat)
vertical(mat)
diagonal1(mat)
diagonal2(mat)
