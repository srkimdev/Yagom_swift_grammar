/*
Any - swift의 모든 타입을 지정하는 키워드
AnyObject - 모든 클래스 타입을 지칭하는 키워드
nil - 없음을 의미하는 키워드
*/

var someAny: Any = 100
someAny = "어떤 타입도 수용 가능합니다"
someAny = 123.12

// let someDouble: Double = someAny -> 오류 발생

class someClass {}

var someAnyObject: AnyObject = someClass()
// someAnyObject = 123,12 -> 오류 발생

// someAny = nil -> 오류 발생
// someAnyObject = nil -> 오류 발생
// 어떤 값도 들어올 수 있지만 빈 값은 들어올 수 없다.



