//// オプショナル型
//let a: Optional<Int>
//let b: Int
//
//a = nil
////b = nil エラー
//
//// max関数
//let x = 123
//let y = 456
//print(max(x, y))

//// 型の確認
//let a = 123
//print(type(of: a))

//// スコープの優先順位
//let a = 1
//
//func someFunction() {
//    let a = 2
//    print("local a:", a)
//}
//
//someFunction()
//print("global a:", a)

//// クロージャー式
//let original = [1, 2, 3]
//let doubled = original.map({value in value * 2})
//print(doubled)

//// 符号演算子
//let a = 7
//print(-a)

// 特殊文字
//print("123")
//print("1\n2\n3")
//print("""
//    五月雨を
//    あつめて早し
//    最上川
//    """)

////　オプショナルバインディング
//let optionalA: String? = nil
//
//if let a = optionalA {
//    print(type(of: a))
//}

//let optionalInt: Int? = nil
//let int = optionalInt ?? 3
//print(int
//
//let optionalDouble = Optional(1.0) // Optional(1.0)
//let optionalIsInfinite = optionalDouble?.isInfinite
//print(String(describing: optionalIsInfinite))

//// 代入によるアクセス
//let intTest: Int
//let stringTest: String
//(intTest, stringTest) = (1, "a")
//print(intTest)
//print(stringTest)

//let any = "abc" as Any
//print(type(of: any))

//let any: Any = "abc"
//print(type(of: any))

//let any = 1 as Any
//let int = any as? Int
//let string = any as? String

//let string: String = "sample"
//let any: Any = string as Any

//let anyLeft = "abc" as Any
//let anyRight = "def" as Any

//let a = [1, 2, 3]
//let b = [4, 5, 6]
//print(a + b)

//let range = 1...4
//for value in range {
//    print(value)
//}

//let optionalA = Optional("a")
//let optionalB = Optional("b")
//
//if let a = optionalA, let b = optionalB {
//    print("値は\(a)と\(b)です")
//} else {
//print("どちらかの値が存在しません")
//}

//let a: Any = 1
//
//if let int = a as? Int {
//    print("値はInt型の\(int)です")
//}

//func someFunction() {
//    let value = -1
//
//    guard value >= 0 else {
//        print("0未満の値です")
//        return
//    }
//}
//someFunction()

//let dictionary = ["a": 1, "b": 2]
//for (key, value) in dictionary {
//    print("Key:\(key), Value\(value)")
//}

//func sum(_int1: Int, _int2: Int) -> Int {
//    return _int1 + _int2
//}
//let result = sum(_int1: 1, _int2: 2)
//print(result)

//func greet(user: String = "Anonymous") {
//  print("Hello, \(user)")
//}
//greet()

//struct Greeting {
//    static let signature = "Sent from iPhone"
//
//    var to = "Tosuke Ishikawa"
//    var body = "Hello!"
//}
//func print(greeting: Greeting) {
//    print("to: \(greeting.to)")
//    print("body: \(greeting.body)")
//    print("signature: \(Greeting.signature)")
//}
//let greeting1 = Greeting()
//var greeting2 = Greeting()
//greeting2.to = "Yusei Nishiyama"
//greeting2.body = "Hi!"
//
//print(greeting: greeting1)
//print("--")
//print(greeting: greeting2)

//struct Greeting {
//    var to = "Yosuke Ishikawa" {
//        willSet {
//            print("WillSet: (to: \(self.to), newValue: \(newValue)")
//        }
//
//        didSet {
//            print("didSet: (to:\(self.to)")
//        }
//    }
//}
//var greeting = Greeting()
//greeting.to = "Yusei Nishiyama"

//struct Greeting {
//    let to: String
//
//    var body: String {
//        "Hello, \(to)"
//    }
//
//    init(to: String) {
//        self.to = to
//    }
//}
//let greeting = Greeting(to: "Bado")
//let body = greeting.body
//print(body)

//struct Progression {
//    var numbers: [Int]
//
//    subscript(index: Int) -> Int {
//        get {
//            return numbers[index]
//        }
//        set {
//            numbers[index] = newValue
//        }
//    }
//}
//
//var progression = Progression(numbers: [1, 2, 3])
//let element1 = progression[1]

//extension String {
//    func printSelf() {
//        print(self)
//    }
//}
//let string = "abc"
//string.printSelf()

//var a = 4.0
//var b = a
//a.formSquareRoot()
//print(a)
//print(b)

//protocol someProtocol {
//    func someMethod()
//}
//
//sturuct SomeStruct1: someProtocol {
//    func someMethod(){}
//}

//let a: Int? = 1
//let b: Int? = 1
//print(a! + b!)

//let optionalDouble = Optional(1)
//let optionalsInfinite = optionalDouble?.isInfinite
//print(String(describing: optionalsInfinite))

//struct SomeStruct {
//    static let sharedValue: Int = 73
//
//    func printSharedValue() {
//        print(Self.sharedValue)
//    }
//}
//
//let some = SomeStruct()
//some.printSharedValue()

struct Progression {
  var numbers: [Int]
  subscript(index: Int) -> Int {
    get {
      return numbers[index]
    }
    set {
      numbers[index] = newValue
    }
  }
}
var progression = Progression(numbers: [1, 2, 3])
let element1 = progression[1] //2
print(element1)

progression[1] = 4
let element2 = progression[1] //4
print(element2)
