//
//  ABC302-C.swift
//  AtCoder
//
//  Created by 小原宙 on 2023/05/20.
//

// 解けていない
private func _main() {
    let numbers = readLine()!.split(separator: " ").map { Int(String($0))! }
    let (n, _) = (numbers[0], numbers[1])
    
    var lines = [String]()
    
    for _ in 0..<n {
        lines.append(readLine()!)
    }
    
    for i in 0..<n {
        for j in 0..<n {
            if i==j {
                continue
            }
            let count = lines[i].reduce(0) { sum, character in
                if lines[j].contains(character) {
                    return sum
                }
                return sum+1
            }
            if count != 1 {
                continue
            }
        }
    }
}
