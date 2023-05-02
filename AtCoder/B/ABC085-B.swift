//
//  ABC085-B.swift
//  AtCoder
//
//  Created by 小原宙 on 2023/05/02.
//

private func _main() {
    let N = Int(readLine()!)!
    
    var mochiArray: [Int] = []
    for _ in 0..<N {
        let mochi = Int(readLine()!)!
        if !mochiArray.contains(mochi) {
            mochiArray.append(mochi)
        }
    }
    
    print(mochiArray.count)
    
    // Set(mochiArray).countでもいい
    // Setで重複を無くすことができる
}
