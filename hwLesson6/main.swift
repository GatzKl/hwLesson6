import Foundation

var array: [String] = ["Alex", "Aidar", "Nursultan", "Mambet", "Eshek", "Aida", "Aijan"]
array.sort()

print(array)

func binarySearch(in array: [String], for value: String) -> Int?
{
var left = 0
var right = array.count - 1
var counter = 0
    while left <= right {
        let middle = Int((Double(left + right) / 2.0))
        if array[middle] < value {
            left = middle + 1
        } else if array[middle] > value {
            right = middle - 1
        } else {
            return middle
        }
        counter += 1
        print("\(counter) шагов сделано")
        
    }
    return nil
}

var x = "Alex"

var result = binarySearch(in: array, for: x)
print(array[result!])
