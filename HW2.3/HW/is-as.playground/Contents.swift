import UIKit

var greeting = "Hello, playground"
var anyArray: [Any] = ["One", "Two", true, false, 1, 2, 3, 1.25, -2.25]

//for i in anyArray {
//    print(i)
//}

//for i in anyArray {
//    if i is Int { print("Целое число", i) }
//    else if i is Double { print("Число с плавающей точкой", i) }
//    else if i is Bool { print("Булеево значение", i) }
//    else if i is String { print("Строка", i) }
//}

for i in anyArray {
    if let i = i as? Int { print("Целое число", i) }
    else if let i = i as? Double { print("Число с плавающей точкой", i) }
    else if let i = i as? Bool { print("Булеево значение", i) }
    else if let i = i as? String { print("Строка", i) }
}

var dict: [String : Any] = [
    "One": true,
    "Two": false,
    "Three" : 1,
    "Fore": 2,
    "Five":  1.25,
    "Six":  "Five"]

for (key, value) in dict {
    print(key , value)
}

var total: Double = 0


for (_, value) in dict {
    if let value = value as? Int {
        total += Double(value)
    } else if let value = value as? Double {
        total += Double(value)
    } else if let value = value as? Bool {
        total += value ? 2 : 3
    } else if value is String {total += 1 }
}

//for (_, value) in dict {
//    if let integer = value as? Double { total += integer}
//    else if let dob = value as? Double { total += dob }
//    else if let bol = value as? Bool { total += 2 }
//    else if let str = value as? String {total += 1 }
//}
print(total)
