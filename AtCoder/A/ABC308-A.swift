//
//  ABC308-A.swift
//  AtCoder
//
//  Created by 小原宙 on 2023/07/01.
//

private func _main() {
    let numbers = readLine()!.split(separator: " ").map { Int(String($0))! }

    let isAllSatisfy = numbers.allSatisfy { number in
        return 100 <= number && number <= 675 && number.isMultiple(of: 25)
    }

    if isAllSatisfy && numbers == numbers.sorted(by: <) {
        print("Yes")
    } else {
        print("No")
    }
}
