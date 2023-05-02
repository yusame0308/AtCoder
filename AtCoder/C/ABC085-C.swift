//
//  ABC085-C.swift
//  AtCoder
//
//  Created by 小原宙 on 2023/05/02.
//

private func _main () {
    let numbers = readLine()!.split(separator: " ").map { Int(String($0))! }
    let (N, Y) = (numbers[0], numbers[1])
    
    for i in 0...N {
        for j in 0...N-i {
            if (i*10000 + j*5000 + (N-i-j)*1000) == Y {
                print(i, j, N-i-j)
                return
            }
        }
    }
    
    print(-1, -1, -1)
}
