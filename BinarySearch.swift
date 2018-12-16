

let numArray = [6,2,3,10,7,9,4,5]

// uses while loop

func binarySearch(searchValue: Int, array: [Int]) -> Bool {
    
    let array = array.sorted(by: <)
    
    var leftIndex = 0
    var rightIndex = array.count - 1
    
    while leftIndex <= rightIndex {
        
        let middleIndex = (leftIndex + rightIndex) / 2
        let middleValue = array[middleIndex]
        
        if searchValue == middleValue {
            return true
        }
        
        if searchValue < middleValue {
            rightIndex = middleIndex - 1
        }
        
        if searchValue > middleValue {
            leftIndex = middleIndex + 1
        }
    }
    
    return false
}

// uses recursion

func alternateBinarySearch(searchValue: Int, array: [Int]) -> Bool {
    
    if array.count == 0 { return false }
    
    var sortedArray = array.sorted(by: <)
    
    let leftIndex = 0
    let rightIndex = sortedArray.count - 1
    
    let middleIndex = (leftIndex + rightIndex) / 2
    let middleValue = sortedArray[middleIndex]
    
    if searchValue == middleValue {
        return true
    }
    
    if searchValue < sortedArray[leftIndex] || searchValue > sortedArray[rightIndex] {
        return false
    }
    
    if searchValue < middleValue {
        sortedArray = Array(sortedArray[leftIndex...middleIndex - 1])
        print(sortedArray)
        return alternateBinarySearch(searchValue: searchValue, array: sortedArray)
    }
    
    if searchValue > middleValue {
        sortedArray = Array(sortedArray[middleIndex + 1...rightIndex])
        print(sortedArray)
        return alternateBinarySearch(searchValue: searchValue, array: sortedArray)
    }

    return false
}

binarySearch(searchValue: 2, array: numArray)
alternateBinarySearch(searchValue: 5, array: numArray)

