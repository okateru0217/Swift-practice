import UIKit

print(0123456789)
print("a")


var total = 0

func count(n: Int) -> Int {
    total += n
    return total
}

func reset() { total = 0 }



func area(height h: Double, width w: Double) -> Double { h * w }
let a = area(height: 10.0, width: 12.5)


//func plusOne(array: [Int]) -> [Int] {
//    var array = array
//    for i in 0 ..< array.count {
//        array[i] = array[i] + 1
//    }
//    return array
//}
//
//var oldArray = [0, 1, 2]
//print(oldArray)
//var newArray = plusOne(array: oldArray)
//print(oldArray)

func plusOne(array : inout [Int]) -> [Int] {
    for i in 0  ..< array.count  {
        array[i] = array[i] + 1
    }
    return array
}

var oldArray = [0, 1, 2]
print(oldArray)                             // => [0, 1, 2]
var newArray = plusOne(array: &oldArray)    // => [1, 2, 3]
print(oldArray)


func mySwap(_ a: inout Int, _ b: inout Int) {
    let t = a
    a = b
    b = t
}

var x = 100
var y = 0
mySwap(&x, &y)
print(x)
print(y)
