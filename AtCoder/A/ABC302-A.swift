//
//  ABC302-A.swift
//  AtCoder
//
//  Created by 小原宙 on 2023/05/20.
//
import Foundation

private func _main() {
    let numbers = readLine()!.split(separator: " ").map { Int(String($0))! }
    let (a, b) = (numbers[0], numbers[1])
    if a.isMultiple(of: b) {
        print(a/b)
        return
    }
    
    print(a/b+1)
}
