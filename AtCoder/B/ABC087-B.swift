//
//  ABC087-B.swift
//  AtCoder
//
//  Created by 小原宙 on 2023/05/01.
//

private func _main() {
    let A = Int(readLine()!)! // 500
    let B = Int(readLine()!)! // 100
    let C = Int(readLine()!)! // 50
    let X = Int(readLine()!)! // sum
    
    var count = 0
    
    let blockCount = X / 50
    
    for useCCount in 0...min(C, blockCount) {
        let restBlockCount = blockCount - useCCount
        
        if !restBlockCount.isMultiple(of: 2) {
            continue
        }
        
        if (A*10 + B*2) < restBlockCount {
            continue
        }
        
        for useBCount in 0...min(B, restBlockCount/2) {
            let restBlockCountForA = restBlockCount - useBCount*2
            
            if !restBlockCountForA.isMultiple(of: 10) {
                continue
            }
            
            if restBlockCountForA/10 > A {
                continue
            }
            
            count += 1
        }
    }
    
    print(count)
}
