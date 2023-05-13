//
//  ABC301-B.swift
//  AtCoder
//
//  Created by 小原宙 on 2023/05/13.
//

private func _main() {
    let n = Int(readLine()!)!
    let numbers = readLine()!.split(separator: " ").map { Int(String($0))! }
    
    var answer = numbers
    var addCount = 0
    
    for i in 0..<n-1 {
        let distance = numbers[i] - numbers[i+1]
        
        if abs(distance) == 1 {
            continue
        }
        
        if distance == 0 {
            answer.insert(numbers[i] + 1, at: i + 1 + addCount)
            addCount += 1
            continue
        }
        
        let addNumbers = (1..<abs(distance)).map { $0 + min(numbers[i], numbers[i+1]) }
        answer.insert(contentsOf: distance > 0 ? addNumbers.reversed() : addNumbers, at: i + 1 + addCount)
        addCount += addNumbers.count
    }
    
    print(answer.map { String($0) }.joined(separator: " "))
}
