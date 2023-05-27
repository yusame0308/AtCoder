//
//  ABC303-C.swift
//  AtCoder
//
//  Created by 小原宙 on 2023/05/27.
//

func main() {
    let numbers = readLine()!.split(separator: " ").map { Int(String($0))! }
    let moveCount = numbers[0]
    let itemCount = numbers[1]
    let moves = readLine()!
    
    var items: [(Int, Int)] = (0..<itemCount).compactMap { _ in
        let points = readLine()!.split(separator: " ").map { Int(String($0))! }
        let (x, y) = (points[0], points[1])
        if abs(x) + abs(y) > moveCount {
            return nil
        }
        return (x, y)
    }
    
    var HP = numbers[2]
    let minHP = numbers[3]
    var currentPoint = (0, 0)
    
    for move in moves {
        if HP == 0 {
            print("No")
            return
        }
        
        switch move {
        case "R":
            currentPoint.0 += 1
        case "L":
            currentPoint.0 -= 1
        case "U":
            currentPoint.1 += 1
        case "D":
            currentPoint.1 -= 1
        default:
            return
        }
        
        HP -= 1
        
        if HP < minHP {
            if let index = items.firstIndex(where: { $0 == currentPoint }) {
                items.remove(at: index)
                HP = minHP
            }
        }
    }
    
    print("Yes")
}
