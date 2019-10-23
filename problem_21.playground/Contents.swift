import Foundation

var amicableNumbers: [[Int]] = []
for num in 1...10_000 {
    var properDivisors: [Int] = []
    for divisor in 1...num {
        if num % divisor == 0 {
            if divisor != num {
                properDivisors.append(divisor)
            }
        }
    }
    let sum = properDivisors.reduce(0, +)
    if sum > 0 {
        var properSumDivisors: [Int] = []
        for divisor in 1...sum {
            if sum % divisor == 0 {
                if divisor != sum {
                    properSumDivisors.append(divisor)
                }
            }
        }
        if num == properSumDivisors.reduce(0, +), num != sum {
            let pair = [num, sum]
            if !amicableNumbers.contains(pair),
                !amicableNumbers.contains(pair.reversed()) {
                amicableNumbers.append(pair)
            }
        }
    }
}

print(amicableNumbers)
var totalSum = 0
for pair in amicableNumbers {
    totalSum += pair.reduce(0, +)
}
print(totalSum)
