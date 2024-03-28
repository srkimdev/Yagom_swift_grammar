import Swift

// 클래스

class 이름 {
    구현부
}

class Sample {
    // 가변 프로퍼티(변수)
    var mutableProperty: Int = 100

    // 불변 프로퍼티
    let immutableProperty: Int = 100

    // 타입 프로퍼티
    static var typeProperty: Int = 100

    // 타입 메서드
    // 재정의 불가 타입 메서드 - static
    static func typeMethod() {
        print("type method - static")
    }

    // 재정의 가능 타입 메서드 - class
    class func typeMethod() {
        print("type method - class")
    }
}

// 클래스 사용

var mutableReference: Sample = Sample()
mutableReference.mutableProperty = 200
// mutableReference.immutableProperty = 200

let immutableProperty: Sample = Sample()
immutableProperty.mutableProperty = 200
// immutableProperty.immutableProperty = 200

// immutableReference = mutableReference

// 타입 프로퍼티 및 메서드
Sample.typeProperty = 200
Sample.typeMethod() // type method

// mutableReference.typeProperty = 400
// mutableReference.typeMethod()

class Student {
    var name: String = "unknown"
    var `class`: String = "Swift"

    class func selfIntroduce() {
        print("학생타입입니다")
    }

    func selfIntroduce() {
        print("저는 \(self.class)반 \(name)입니다")
    }
}

Student.selfIntroduce() // 학생타입입니다

var yagom: Student = Student()
yagom.name = "yagom"
yagom.class = "스위프트"
yagom.selfIntroduce() // 저는 스위프트반 yagom입니다

let jina: Student = Student()
jina.name = "jina" // 변경할 수 있다.
jina.selfIntroduce() // 저는 Swift반 jina입니다

