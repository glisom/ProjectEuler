let numbers:[Int] = [0,1,2,3,4,5,6,7,8,9]

extension Array {
    func decompose() -> (Iterator.Element, [Iterator.Element])? {
        guard let x = first else { return nil }
        return (x, Array(self[1..<count]))
    }
}

func between<T>(_ x: T, _ ys: [T]) -> [[T]] {
    guard let (head, tail) = ys.decompose() else { return [[x]] }
    return [[x] + ys] + between(x, tail).map { [head] + $0 }
}

func permutations<T>(_ xs: [T]) -> [[T]] {
    guard let (head, tail) = xs.decompose() else { return [[]] }
    return permutations(tail).flatMap { between(head, $0) }
}

let permArray = permutations(numbers)
var orderedArray: [Int] = Array<Int>()

for arr in permArray {
    var tempString = ""
    _ = arr.map{ tempString = tempString + "\($0)" }
    orderedArray.append(Int(tempString)!)
}

orderedArray.sort()

print(orderedArray[999999])
