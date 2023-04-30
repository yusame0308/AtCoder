//
//  ABC081-B.swift
//  AtCoder
//
//  Created by 小原宙 on 2023/05/01.
//

private func _main() {
    let N = Int(readLine()!)!
    var numbers = readLine()!.split(separator: " ").map { Int(String($0))! }
    
    var count = 0
    
    while true {
        for i in 0..<N {
            if numbers[i] % 2 != 0 {
                print(count)
                return
            }
            numbers[i] /= 2
        }
        count += 1
    }
}
