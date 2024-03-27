// Optional
// 값이 있을 수도 있고 없을 수도 있다.

let optionalConstant: Int? = nil
// let someConstant: Int = nil

// Optional의 필요성
// nil의 가능성을 명시적으로 표현해준다.
// nil 가능성을 문서화 하지 않아도 코드만으로 충분히 표현 가능 -> 문서, 주석 작성 시간을 절약
// 전달받은 값이 옵셔널이 아니라면 nil체크를 하지 않더라도 안심하고 사용 -> 효율적인 코딩, 예외 상황 최소화

func someFunction(someOptionalParam: Int?) {
    // ...
}

func someFunction(someParam: Int) {
    // ...
}

someFunction(someOptionalParam: nil)
// someFunction(someParam: nil) -> 오류 발생

// 선언 방법
let optionalValue: Optional<Int> = nil
let optionalValue: Int? = nil

// 암시적 추출 옵셔널
var optionalValue: Int! = 100
switch optionalValue {
case .none:
    print("This Optional variable is nil")
case .some(let value):
    print("Value is \(value)")
}

optionalValue = optionalValue + 1
optionalValue = nil
// optionalValue = optionalValue + 1 -> 오류 발생

// 일반적인 Optional
var optionalValue: Int? = 100

switch optionalValue {
case .none:
    print("This Optional variable is nil")
case .some(let value):
    print("Value is \(value)")
}

optionalValue = nil
// optionalValue = optionalValue + 1 -> 오류 발생
// 기존 변수처럼 사용 불가 -> 옵셔널과 일반 값은 다른 타입이므로 연산 불가