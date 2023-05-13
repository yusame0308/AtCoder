//
//  ABC301-C.swift
//  AtCoder
//
//  Created by 小原宙 on 2023/05/13.
//

// 解けていない
private func _main() {
    var s = readLine()!
    var t = readLine()!
    
    var sAtCount = 0
    
    for character in s {
        if character == "@" {
            sAtCount += 1
            continue
        }
        
        if let index = t.firstIndex(of: character) {
            s.remove(at: s.firstIndex(of: character)!)
            t.remove(at: index)
            continue
        }
        
        if !"atcoder".contains(character) {
            print("No")
            return
        }
    }
    
    let tAtCount = t.filter { $0 == "@" }.count
    let sCount = s.count
    
    let (minAtCount, excludeAtCount) = sAtCount > tAtCount ? (tAtCount, sCount - sAtCount) : (sAtCount, sCount - tAtCount)
    
    if excludeAtCount > minAtCount {
        print("No")
        return
    }
    
    print("Yes")
}
