var colors = ["Red", "Green", "Blue", "Red", "Red", "Blue", "Blue", "Blue"]

func mostCommonElement(inArray array: [String]) -> String? {
    var result: String?
    var dictionary = [String: Int]()
    
    array.forEach { (element) in
        if let count = dictionary[element] {
            dictionary[element] = count + 1
        } else {
            dictionary[element] = 1
        }
    }
    
    var max = 0
    
    print(dictionary)
    
    for(key, value) in dictionary {
        if value > max {
            max = value
            result = key
        }
    }
    
    return result
}

mostCommonElement(inArray: colors)
