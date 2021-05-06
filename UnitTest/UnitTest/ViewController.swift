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
