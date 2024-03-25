import Swift

// 매개변수 기본값
// func 함수이름(매개변수1이름: 매개변수1타입, 매개변수2이름: 매개변수2타입 = 매개변수 기본값 ...) -> 반환타입 {
//     함수 구현부
//     return 반환값
// }

// 매개변수 기본값은 매개변수 목록 중 맨 뒤에 위치하는 것이 좋다.

func greeting(friend: String, me: String = "yagom") {
    print("Hello \(friend)! I'm \(me)")
}

greeting(friend: "haha") // Hello hana! I'm yagom
greeting(friend: "john", me: "eric") // Hello john! I'm eric

// 전달인자 레이블
// 함수가 호출할 때 매개변수의 역할을 좀 더 명확하게 하거나 함수 사용자의 입장에서 표현하고자 할 때 사용
// func 함수이름(전달인자 레이블 매개변수1이름: 매개변수1타입, 전달인자 레이블 매개변수2이름: 매개변수2타입 ...) -> 반환타입 {
//     함수 구현부
//     return 반환값
// }

func greeting(to friend: String, from me: String) {
    print("Hello \(friend)! I'm \(me)")
}
// to, from이 추가 되었기 때문에 위에 greeting과는 다른 함수가 된다.
// 함수를 호출할 때에는 전달인자 레이블을 사용해야 한다.
greeting(to: "hana", from: "yagom") // Hello hana! I'm yagom

// 가변 매개변수
// 전달 받을 값의 개수를 알기 어려울 때 사용할 수 있다
// 함수당 하나만 가질 수 있다
// 맨 뒤에 위치하는 것이 좋다

// func 함수이름(매개변수1이름: 매개변수1타입, 매개변수2이름: 매개변수2타입...) -> 반환타입 {
//     함수 구현부
//     return 반환값
// }

func sayHelloToFriends(me: String, friend: String...) -> String {
    return "Hello \(friend)! I'm \(me)!"
}

print(sayHelloToFriends(me: "yagom", friend: "hana", "eric", "wing"))
// Hello ["hana", "eric", "wing"]! I'm yagom!
// friend: 뒤에 전달인자가 없거나 nil이 들어간다면 에러 발생

print(sayHelloToFriends(me: "yagom"))
// Hello []! I'm yagom!

// 데이터 타입으로서의 함수
// 스위프트는 함수형 프로그래밍 패러다임을 포함하는 다중 패러다임 언어이다
// 스위프트 함수는 일급객체이므로 변수, 상수 등에 저장이 가능하다
// 매개변수를 통해 전달할 수도 있다.

// 함수의 타입 표현
// 반환타입을 생략할 수 없다.
// (매개변수1타입, 매개변수2타입 ...) -> 반환타입

var someFunction: (String, String) -> Void = greeting(to:from:)
someFunction("eric", "yagom") // Hello eric! I'm yagom

someFunction = greeting(friend:me:)
someFunction("eric", "yagom") // Hello eric! I'm yagom

// 타입이 다른 함수는 할당할 수 없다
// someFunction = sayHelloToFriend(me: friend:) -> 오류 발생

func runAnother(function: (String, String) -> Void) {
    function("jenny", "mike")
}

// Hello jenny! I'm mike
runAnother(function: greeting(friend:me:))

// Hello jenny! I'm mike
runAnother(function: someFunction)