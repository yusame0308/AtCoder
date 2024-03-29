//
//  sample.swift
//  AtCoder
//
//  Created by 小原宙 on 2023/05/01.
//

//let number = Int(readLine()!)!
//let numbers = readLine()!.split(separator: " ").map { Int(String($0))! }

// 文字列置換
// S.replacingOccurrences(of: "dream", with: ",")

// 数値配列を1行の文字列に結合
// answer.map { String($0) }.joined(separator: " ")

// 重複しない配列
// var nums = Set<Int>()

// 重複した数値を取り出す
// var set = Set<Int>()
// for i in 0..<n {
//    if !set.insert(numbers[i]).inserted {
//        print(i+1)
//        return
//    }
// }

// 配列から辞書型を生成
// let array: [String] = ["a", "b", "c", "d"]
// let dictionary: [String: [Int]] = Dictionary(uniqueKeysWithValues: array.map({ s in
//     (s, [])
// }))
// or
// let dictionary: [String: [Int]] = Dictionary(uniqueKeysWithValues: zip(array, repeatElement([], count: array.count)))
