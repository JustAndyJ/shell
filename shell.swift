
import Foundation
let startTime = Date()

func shellSort<T: Comparable>(_ array: inout [T]) {
    let n = array.count
    var gap = n / 2

    while gap > 0 {
        for i in gap..<n {
            let temp = array[i]
            var j = i

            while j >= gap && array[j - gap] > temp {
                array[j] = array[j - gap]
                j -= gap
            }

            array[j] = temp
        }

        gap /= 2
    }

  let endTime = Date()
  print(endTime.timeIntervalSince(startTime))
}

// Ejemplo de uso:
var myArray = [7, 28, 2, 53, 1, 5, 6, 344, 54, 87, 4, 5, 6, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57]
shellSort(&myArray)
print(myArray)  // Resultado: [1, 2, 5, 7, 28, 53]
