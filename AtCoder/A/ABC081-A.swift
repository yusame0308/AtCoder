//
//  abc081.swift
//  AtCoder
//
//  Created by 小原宙 on 2023/05/01.
//

private func _main() {
    let string = readLine()!
    print(string.reduce(0, { sum, num in sum + Int(String(num))! }))
}
