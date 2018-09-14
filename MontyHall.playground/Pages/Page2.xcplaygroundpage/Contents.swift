//: [Previous](@previous)

import Foundation
//: ![](monti6.png).

//: ![](monti7.png).

//: ![](monti8.png).

//: ![](monti9.png).

//: - Youtube Link
//: [몬티홀의 딜레마](https://www.youtube.com/watch?v=JTceeE_Kpdk)

//: ## 왜 1/2 확률이 아니지?


// 행위를 반복하여 확률을 도출함


var trial: Int
var 처음선택그대로 = 0
var 처음선택을바꿈 = 0

//trial = 100000 // 66퍼, 33퍼
trial = 10000
for _ in 1...trial {
    
    var items = ["Goat", "염소", "Car"]
    
    // 1. 염소와 차의 위치를 섞는다.
    var shuffled = [String]();
    
    for _ in 0..<items.count
    {
        let rand = Int(arc4random_uniform(UInt32(items.count)))
        shuffled.append(items[rand])
        items.remove(at: rand)
    }
    
    
    // 2. 차가 있을거라 생각하는 문을 선택한다
    // case 1. 그대로 선택해서 차가 나올 확률
    // case 2. 선택을 변경해서 차가 나올 확률ㄱ
    let randChoice = Int(arc4random_uniform(UInt32(items.count)))
    
    if shuffled[randChoice] == "Car" {//== "Goat" || shuffled[randChoice] == "염소" {
        처음선택그대로 += 1
    } else {
        처음선택을바꿈 += 1
    }
}
print(처음선택그대로)
print(처음선택을바꿈)

print("처음선택그대로의 차가 나올 확률은 \(처음선택그대로 * 100 / trial)% 입니다 ")
print("처음선택을바꿈의 차가 나올 확률은 \(처음선택을바꿈 * 100 / trial)% 입니다 ")


//: [Next](@next)
