import UIKit

//: ## Monty Hall의 딜레마
//: ![intro](monti1.png).
//: - 문이 3개가 있고, 문 뒤에는 자동차 또는 염소가 들어있습니다.

//: ![intro](monti2.png).
var door = ["Unknown", "Unknown", "Unknown" ]

func selectUser() -> String {
    // arc4random_uniform 함수를 통해 0 ~ 2의 랜덤값을 생성
    let randomChoice: UInt32 = arc4random_uniform(3)
    
    // return UInt32 -> Int로 변환
    let doorIndex = Int(randomChoice)
    
    // Index는 UInt32 type으로 쓸 수 없다.
    print("randomChoice를 통한 doorIndex는 \(doorIndex)")
    //return door[doorIndex]
    
    // 첫번째 문을 선택했다고 가정 함.
    let doorIndexTemp = 0
    print("첫 번째 문 선택, doorIndexTemp는 \(doorIndexTemp)")
    
    return door[doorIndexTemp]
}
selectUser()
/*:
 - door[0] ~ door[2], 총 3개의 문을 가지고 있고
 - selectUser() 통해 3개의 문 중에 하나를 선택할 수 있습니다.
 */
    
//: ![intro](monti3.png).
func openDoor() {
    door = ["Unknown", "Unknown", "Goat" ]
}
openDoor()
/*:
 - 선택이 끝난 후, 차가 아닌 문을 열어 염소의 위치를 확인 시켜 줍니다.
 -
 */

//: ![intro](monti4.png).

//: ![intro](monti5.png).
/*:
 - Quiz 1. 첫 번째 문에 차가 있을 확률은?
 - Quiz 2. 두 번째 문에 차가 있을 확률은?
 */
//: [Next](@next)
