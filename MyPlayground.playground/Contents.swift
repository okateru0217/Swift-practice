import UIKit

private var detailRecordItem = [RecordItem]()

struct RecordItem {
    var item: String
    var time: Int
}

//let record = RecordItem(item: "item", time: 10)
//detailRecordItem.append(record)
//print(detailRecordItem)

struct RecordItems {
    var total: RecordItem
    var today: RecordItem
    
    init() {
        total = RecordItem(item: "total", time: 10)
        today = RecordItem(item: "today", time: 1)
    }
}
var recordItems = RecordItems()

detailRecordItem.append(contentsOf: [recordItems.total, recordItems.today])
print(detailRecordItem)

// クロージャー
let double = { (x: Int) -> Int in
    return x * 2
}
double(2)

var plus = { (x: Int) -> Int in
    var y = 0
    y += x
    return x + y
}
plus(3)

var multi = { (x: Int, y: Int) -> Int in
    return x + y
}
multi(3, 7)

var multiReturn = { (x: Int, y: Int) -> Int in
    x + y
}
multiReturn(2, 6)

var closure: (String) -> Int
closure = { string in
    string.count
}
closure("abcd")

// override
class Fish {
    var distance = 0
    func stop() {
        print("止まりました")
    }
}

class Karei: Fish {
    override func stop() {
        let distance: Int = 3
        print(distance + 5)
    }
}

class Suzuki: Fish {
    override func stop() {
        print("ギャーギャー言いながら")
        super.stop()
    }
}

var fish = Fish()
fish.stop()
var karei = Karei()
karei.stop()
var suzuki = Suzuki()
suzuki.stop()
