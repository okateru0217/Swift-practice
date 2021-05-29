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
