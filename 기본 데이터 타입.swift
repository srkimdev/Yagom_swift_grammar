import UIKit

// swift의 기본 데이터 타입

// Bool
var someBool: Bool = true
someBool = false
// someBool = 0, 1 -> 에러 발생

// Int
var someInt: Int = -100
// someInt = -100.1 -> 에러 발생

// UInt
var someUInt: UInt = 100
// someUInt = -100 -> 에러 발생
// someUInt = someInt -> 에러 발생

// float
var someFloat: Float = 3.14
someFloat = 3
// 정수를 넣어줘도 괜찮다

// Double
var someDouble: Double = 3.14
someDouble = 3
// someDouble = someFloat -> 에러 발생

// Character
var someCharacter: Character = "A"
someCharacter = "B"
// 오로지 문자 1개만 저장
// someCharacter = "하하하" -> 에러 발생

// String
var someString: String = "하하하 "
someString = someString + "웃으면 복이와요"

print(someString)
// someString = someCharacter -> 오류 발생
