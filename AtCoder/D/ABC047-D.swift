//
//  ABC047-D.swift
//  AtCoder
//
//  Created by 小原宙 on 2023/05/04.
//

private func _main() {
    let firstNumbers = readLine()!.split(separator: " ").map { Int(String($0))! }
    let (n, _) = (firstNumbers[0], firstNumbers[1])
    let prices = readLine()!.split(separator: " ").map { Int(String($0))! }
    
    var minPrice = prices[0]
    var maxDifference = 0
    var pairs = 0
    
    for i in 1..<n {
        let price = prices[i]
        if price <= minPrice {
            minPrice = price
            continue
        }
        
        let difference = price - minPrice
        if difference > maxDifference {
            maxDifference = price - minPrice
            pairs = 1
            continue
        }
        if difference == maxDifference && price != prices[i-1] {
            pairs += 1
            continue
        }
    }
    
    print(pairs)
}
