import UIKit

var testDic = [
    ["date": "2021年4月18日", "time": 1240]
]

// 追加
testDic.append(["date": "2021年4月19日", "time": 0])
print(testDic)
// 更新
testDic[testDic.count - 1]["time"] = 2140
print(testDic.last!["time"]!)


func currentMonth() -> String {
    let date = DateFormatter()
    date.setLocalizedDateFormatFromTemplate("M")
    date.locale = Locale(identifier: "ja_JP")
    let today = Date()
    return date.string(from: today)
}

let nextMonth = Calendar.current.date(byAdding: .month, value: 1, to: Date())
print(nextMonth)
testDic(dic: january)
//for i in 1...31 {
//    january.append(["date": "1/\(i)", "time": "0"])
//}
