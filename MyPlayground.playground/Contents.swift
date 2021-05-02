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
