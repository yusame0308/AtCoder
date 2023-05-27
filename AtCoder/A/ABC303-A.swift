//
//  ABC303-A.swift
//  AtCoder
//
//  Created by 小原宙 on 2023/05/27.
//

private func _main() {
    let n = Int(readLine()!)!
    let s = Array(readLine()!)
    let t = Array(readLine()!)
    
    for i in 0..<n {
        if s[i] != t[i] {
            let firstCheck = s[i] == "1" && t[i] == "l" || s[i] == "l" && t[i] == "1"
            let secondCheck = s[i] == "0" && t[i] == "o" || s[i] == "o" && t[i] == "0"
            
            guard firstCheck || secondCheck else {
                print("No")
                return
            }
        }
    }
    
    print("Yes")
}
