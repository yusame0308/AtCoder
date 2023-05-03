//
//  ABC047-C.swift
//  AtCoder
//
//  Created by 小原宙 on 2023/05/03.
//

private func _main() {
    let S = readLine()!
    
    var previousStone = Character("a")
    var count = -1
    
    for stone in S {
        if stone != previousStone {
            count += 1
            previousStone = stone
        }
    }
    
    print(count)
}
