//
//  ABC302-B.swift
//  AtCoder
//
//  Created by 小原宙 on 2023/05/20.
//

private func _main() {
    let numbers = readLine()!.split(separator: " ").map { Int(String($0))! }
    let (h, _) = (numbers[0], numbers[1])
    
    var wordList = [Character: [(h: Int, w: Int)]]()
    "snuke".forEach { character in
        wordList[character] = []
    }
    
    for i in 0..<h {
        readLine()!.enumerated().forEach { j, character in
            if "sunuke".contains(character) {
                wordList[character]!.append((h: i+1, w: j+1))
            }
        }
    }
    
    wordList["s"]!.forEach { sH, sW in
        for n in wordList["n"]! {
            let (nH, nW) = (n.h, n.w)
            if abs(sH-nH) > 1 || abs(sW-nW) > 1 {
                continue
            }
            
            let hDistance = nH-sH
            let wDistance = nW-sW
            
            for u in wordList["u"]! {
                let (uH, uW) = (u.h, u.w)
                if uH-nH != hDistance || uW-nW != wDistance {
                    continue
                }
                
                for k in wordList["k"]! {
                    let (kH, kW) = (k.h, k.w)
                    if kH-uH != hDistance || kW-uW != wDistance {
                        continue
                    }
                    
                    for e in wordList["e"]! {
                        let (eH, eW) = (e.h, e.w)
                        if eH-kH != hDistance || eW-kW != wDistance {
                            continue
                        }
                        
                        print(sH, sW)
                        print(nH, nW)
                        print(uH, uW)
                        print(kH, kW)
                        print(eH, eW)
                    }
                }
            }
        }
    }
}
