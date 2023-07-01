//
//  ABC308-B.swift
//  AtCoder
//
//  Created by 小原宙 on 2023/07/01.
//

private func _main() {
    let _ = readLine()!.split(separator: " ").map { Int(String($0))! }

    let eatDishes = readLine()!.split(separator: " ").map { String($0) }
    var dishTypes: [(name: String, price: Int)] = readLine()!.split(separator: " ").map { (String($0), 0) }
    dishTypes.insert((name: "other", price: 0), at: 0)

    let prices = readLine()!.split(separator: " ").map { Int(String($0))! }
    for i in 0..<prices.count {
        dishTypes[i].price = prices[i]
    }

    var sumPrice = 0

    eatDishes.forEach { dishName in
        if let index = dishTypes.firstIndex(where: { $0.name == dishName }) {
            sumPrice += dishTypes[index].price
        } else {
            sumPrice += dishTypes.first!.price
        }
    }

    print(sumPrice)
}
