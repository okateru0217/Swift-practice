import UIKit

class Product {
    var name: String
    var price: Int
    var consumptionTax: Int {
        get {
            return Int(Float(price) * 0.1)
        }
        set {
            price = Int(Float(newValue) / 0.1)
        }
    }

    init(name: String, price: Int) {
        self.name = name
        self.price = price
    }
}

var apple = Product(name: "りんご", price: 100)
apple.consumptionTax

apple.price = 150
apple.consumptionTax

apple.consumptionTax = 20
apple.price
