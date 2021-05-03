//
//  ViewController.swift
//  UnitTest
//
//  Created by 岡澤輝明 on 2021/05/03.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let result = plus(a: 5, b: 10)
        print(result)
        // Do any additional setup after loading the view.
    }

    func plus(a: Int, b: Int) -> Int {
        return a + b
    }

}

class Person {
    var name = ""
    var height: Double = 0
    var weight: Double = 0

    init(_ name: String, _ height: Double, _ weight: Double) {
        self.name = name
        self.height = height
        self.weight = weight
    }

    func hi() -> String {
        return "Hi. I'm \(self.name)."
    }

    func bmi() -> Double {
        // 小数点 2 桁目で切り上げ
        let val = self.weight / (self.height / 100 * self.height / 100) * 100
        return val.rounded() / 100
    }
}
