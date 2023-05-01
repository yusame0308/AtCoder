//
//  ABC083-B.swift
//  AtCoder
//
//  Created by 小原宙 on 2023/05/01.
//

private func _main() {
    let numbers = readLine()!.split(separator: " ").map { Int(String($0))! }
    let N = numbers[0]
    let A = numbers[1]
    let B = numbers[2]
    
    let nums = Array(1...N)
    let answer = nums.reduce(0) { x, y in
        let numArray = Array(String(y)).map { Int(String($0))! }
        let sum = numArray.reduce(0) { $0 + $1 }
        if A <= sum && sum <= B {
            return x + y
        }
        return x
    }
    print(answer)
}
