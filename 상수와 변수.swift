import Swift

// 상수, 변수의 선언
// 상수 선언 키워드 let
// 변수 선언 키워드 var

// 상수의 선언
// let 이름: 타입 = 값

// 변수의 선언
// var 이름: 타입 = 값

// 값의 타입이 명확하다면 타입은 생략 가능
// let 이름 = 값
// var 이름 = 값

let constant: String = "차후에 변경이 불가능한 상수 let"
var variable: String = "차후에 변경이 가능한 변수 var"

variable = "변수는 이렇게 차후에 다른 값을 할당할 수 있지만"
//constant = "상수는 차후에 다른 값을 변경할 수 없습니다." -> 오류발생

// 상수 선언 후에 나중에 값 할당하기
// 나중에 할당하려고 하는 상수나 변수는 타입을 꼭 명시해주어야 한다.
let sum: Int
let inputA: Int = 100
let inputB: Int = 200

// 선언 후 첫 할당
sum = inputA + inputB

// sum = 1 -> 오류 발생

// 변수는 차후에 할당하는 것이 가능하다.
var nickName: String
nickName = "yagom"

// 변수는 차후에 다른 값을 할당해도 문제가 없다.
nickName = "야곰"
