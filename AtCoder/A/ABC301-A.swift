//
//  ABC301-A.swift
//  AtCoder
//
//  Created by 小原宙 on 2023/05/13.
//

private func _main() {
    let n = Int(readLine()!)!
    let s = Array(readLine()!)
    
    var tCount = 0
    
    for winner in s {
        if winner == "T" {
            tCount += 1
        }
    }
    
    let aCount = n - tCount
    
    if aCount == tCount {
        print(s.last == "T" ? "A" : "T")
        return
    }
    
    print(tCount > aCount ? "T" : "A")
}
