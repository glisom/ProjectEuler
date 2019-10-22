import UIKit
func traverseGrid(_ gridSize: Int) -> Int {
    var paths = 1
    let list = Array(repeating: 1, count: gridSize)
    for (i, _) in list.enumerated() {
        paths *= (2 * gridSize) - i
        paths /= i + 1
    }
    return paths
}
let startTime = DispatchTime.now()
let paths = traverseGrid(20)
let endTime = DispatchTime.now()
print(paths)

