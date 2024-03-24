/*
Array - 순서가 있는 리스트 컬렉션
Dictionary - 키와 값의 쌍으로 이루어진 컬렉션
Set - 순서가 없고, 멤버가 유일한 컬렉션
*/

// Array
var integers: Array<Int> = Arrray<Int>()
integers.append(1)
integers.append(100)
integers.append(100.1)

integers.countains(100)
// 100이라는 멤버를 가지고 있는지 확인

integers.remove(at:0)
// 0번 인덱스의 멤버를 삭제
integers.removeLast()
// 마지막 인덱스의 멤버를 삭제
integers.removeAll()
// 모든 멤버를 삭제
integers.count
// 멤버 몇개 있는지 확인

// 빈 Double Array 생성
var doubles: Array<Double> = [Double]()

// 빈 String Array 생성
var strings: [String] = [String]()

// 빈 Character Array 생성
var characters: [Character] = []

// let을 사용하여 Array를 선언하면 변경 불가
let immutableArray = [1, 2, 3]
// immutalbeArray.append(4) -> 에러 발생
// immutalbeArray.removeAll() -> 에러 발생

// Dictionary
var anyDictionary: Dictionary<String, Any> = [String: Any]()
anyDictionary["somekey"] = "value"
anyDictionary["anotherkey"] = 100

anyDictionary["somekey"] = "dictionary"

// 딕셔너리 값 삭제
anyDictionary.removeValue(forkey: "anotherkey")
anyDictionary["somekey"] = nil

let emptyDictionary: [String: String] = [:]
let initializedDictionary: [String: String] = ["name": "yagom", "gender": "male"]
// emptyDictionary["key"] = "value" -> 에러 발생
// let someValue: String = initializedDictionary["name"] -> 에러 발생

// Set
var integerSet: Set<Int> = Set<Int>()
// 축약 문법이 없다
integerSet.insert(1)
integerSet.insert(100)
integerSet.insert(99)
integerSet.insert(99)
// 같은 값을 넣어줘도 한번만 추가됨
integerSet.contains(1)
integerSet.removeFirst()
integerSet.count

let setA: Set<Int> = [1, 2, 3, 4, 5]
let setB: Set<Int> = [3, 4, 5, 6, 7]

let union: Set<Int> = setA.union(setB)
// {2, 4, 5, 6, 7, 3, 1}
let sortedUnion: [Int] = union.sorted()
// {1, 2, 3, 4, 5, 6, 7}
let intersection: Set<Int> = setA.intersection(setB)
// 교집합 {5, 3, 4}
let subtracting: Set<Int> = setA.subtracting(setB)
// 차집합 {2, 1}
