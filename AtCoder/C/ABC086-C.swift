//
//  ABC086-C.swift
//  AtCoder
//
//  Created by 小原宙 on 2023/05/03.
//

private func _main() {
    let N = Int(readLine()!)!
    
    var previousPlot = [0, 0, 0]
    
    for _ in 0..<N {
        let plot = readLine()!.split(separator: " ").map { Int(String($0))! }
        let distance = abs((plot[1] + plot[2]) - (previousPlot[1] + previousPlot[2]))
        let timeDistance = abs(plot[0] - previousPlot[0])
        if timeDistance < distance || !(timeDistance - distance).isMultiple(of: 2) {
            print("No")
            return
        }
        previousPlot = plot
    }
    
    print("Yes")
}
