//
//  ABC308-C.swift
//  AtCoder
//
//  Created by 小原宙 on 2023/07/01.
//

func main() {
    let n = Int(readLine()!)!

    var groups = [Int: [(index: Int, prob: Double)]]()
    (0..<10).forEach { n in
        groups[n] = []
    }

    (1...n).forEach { i in
        let numbers = readLine()!.split(separator: " ").map { Double(String($0))! }
        let prob = numbers[0] / (numbers[0] + numbers[1])

        let stringProb = String(prob)
        let startIndex = stringProb[stringProb.index(stringProb.startIndex, offsetBy: 2)]
        let groupIndex = Int(String(startIndex))!

        let index = groups[groupIndex]!.firstIndex(where: { $0.prob < prob }) ?? groups[groupIndex]!.endIndex

        groups[groupIndex]!.insert((i, prob), at: index)
    }

    (0..<10).reversed().forEach { n in
        groups[n]!.forEach { pair in
            print(pair.index, terminator: " ")
        }
    }
}
