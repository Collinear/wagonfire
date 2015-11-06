import Foundation

let numbers  = ["1","2","3","4","5","6","7","8","9"]
let letters  = ["A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z"]

func combinations() -> [String] {
    var x: Int
    var y: Int
    var z: Int
    
    var current = String()
    var result  = [String]()
    
    for x in 0..<9 {
        for y in 0..<9 {
            for z in 0..<26 {
                current = "\(numbers[x])\(numbers[y])\(letters[z])"
                result.append(current)
            }
        }
    }
    
    return result
}

let foo = combinations()



