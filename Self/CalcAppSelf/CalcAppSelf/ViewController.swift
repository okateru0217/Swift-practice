//
//  ViewController.swift
//  CalcAppSelf
//
//  Created by 岡澤輝明 on 2021/02/14.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var plusResult: UILabel!
    @IBOutlet weak var minusResult: UILabel!
    
    var calc = Calc()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func calcBtn(_ sender: Any) {
        calc.add()
        print(Calc().addResult)
        print(Calc().minusResult)
        plusResult.text = String(30)
        minusResult.text = String(Calc().minusResult)
    }
    
}

