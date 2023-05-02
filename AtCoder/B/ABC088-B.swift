//
//  ABC088-B.swift
//  AtCoder
//
//  Created by 小原宙 on 2023/05/02.
//

private func _main() {
    let N = Int(readLine()!)!
    var numbers = readLine()!.split(separator: " ").map { Int(String($0))! }
    
    numbers.sort(by: >)
    var highSum = 0
    var lowSum = 0
    
    for i in stride(from: 0, to: N, by: 2) {
        highSum += numbers[i]
    }
    for i in stride(from: 1, to: N, by: 2) {
        lowSum += numbers[i]
    }
    
    print(highSum - lowSum)
}
