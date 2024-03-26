import Swift

// 조건문

let someInteger = 100

// if - else
// if condition {
//     statements
// } else if condition {
//     statements
// } eles {
//     statements
// }

if someInteger < 100 {
    print("100 미만")
} else if someInteger > 100 {
    print("100 초과")
} else {
    print("100")
} // 100

// 스위프트의 조건에는 항상 Bool 타입이 들어와야 한다.
// someInteger는 Int 타입이기 때문에 오류 발생
// if someInteger {} -> 오류 발생

// switch

// switch value {
// case pattern:
//     code
// default:
//     code
// }

switch someInteger {
case 0:
    print("zero")
case 1..<100: // 이상, 미만
    print("1~99")
case 100:
    print("100")
case 101...Int.max: // 이상, 이하
    print("over 100")
default:
    print("unknown")
} // 100

// 정수 이외의 대부분의 기본 타입을 사용할 수 있다.
switch "yagom" {
case "jake":
    print("jake")
    fallthrough // 빠져나오지 않고 mina까지 탐색한다.
case "mina":
    print("mina")
case "yagom":
    print("yagom!!")
default:
    print("unknown")
} // yagom!!