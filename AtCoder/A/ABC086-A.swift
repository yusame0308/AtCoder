//
//  abc086.swift
//  AtCoder
//
//  Created by 小原宙 on 2023/05/01.
//

private func _main() {
    let numbers = readLine()!.split(separator: " ").map { Int(String($0))! }
    let number = numbers[0] * numbers[1]
    print(number % 2 == 0 ? "Even" : "Odd")
}
