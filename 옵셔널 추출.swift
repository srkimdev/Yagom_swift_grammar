// Optional을 꺼내는 방법
// Optional Binding
// Optional 강제 추출

// Optional Binding
// 옵셔널의 값을 꺼내오는 방법중 하나
// nil체크 + 안전하게 값을 추출

func printName(name: String) {
    print(name)
}

var myName: String? = nil
// printName(myName) -> 오류 발생

if let name: String = myName {
    printName(name)
} else {
    print("myName == nil")
}
// name 상수는 if let 안에서만 사용 가능
// printName(name) -> 오류 발생

var myName: String? = "yagom"
var yourName: String? = nil

if let name = myName, let friend = yourName {
    print("\(name) and \(friend)")
}
// yourName이 nil이기 때문에 실행되지 않음

yourName = "hana"

if let name = myName, let friend = yourName {
    print("\(name) and \(friend)")
}
// yagom and hana

// Force unwrapping, 강제 추출

printName(myName!)
// yagom
// Optional타입이 아닌 String타입으로 값이 들어감

myName = nil
print(myName!)
// 강제추출시 값이 없으므로 런타임 오류 발생

var yourName: String! = nil

printName(yourName)
// nil 값이 전달되기 때문에 런타임 오류 발생



