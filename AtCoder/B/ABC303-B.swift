//
//  ABC303-B.swift
//  AtCoder
//
//  Created by 小原宙 on 2023/05/27.
//

private func _main() {
    let numbers = readLine()!.split(separator: " ").map { Int(String($0))! }
    let (n, m) = (numbers[0], numbers[1])
    
    var pairs = [Int: [Int]]()
    for i in 1..<n {
        pairs[i] = Array(i+1...n)
    }
    
    for _ in 0..<m {
        let lineNumbers = readLine()!.split(separator: " ").map { Int(String($0))! }
        for i in 0..<n-1 {
            let x = lineNumbers[i]
            let y = lineNumbers[i+1]
            if let index = pairs[min(x, y)]?.firstIndex(of: max(x, y)) {
                pairs[min(x, y)]!.remove(at: index)
            }
        }
    }
    
    let answer = pairs.reduce(0) { sum, pair in
        return sum + pair.value.count
    }
    print(answer)
}
