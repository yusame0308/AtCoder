//
//  ABC049-C.swift
//  AtCoder
//
//  Created by 小原宙 on 2023/05/02.
//
import Foundation

private func _main() {
    let S = readLine()!
    if S.contains(where: { String($0) == "dreamr" || String($0) == "eraseer" }) {
        print("NO")
        return
    }
    let separatedArray = S.replacingOccurrences(of: "dream", with: ",").replacingOccurrences(of: "erase", with: ",").split(separator: ",")
    if !separatedArray.allSatisfy({ $0 == "er" || $0 == "r" || $0 == "" }) {
        print("NO")
        return
    }
    print("YES")
}
