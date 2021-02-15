//
//  ViewController.swift
//  Swift5CountUp1
//
//  Created by 岡澤輝明 on 2021/02/11.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var countUpLabel: UILabel!
    var count = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        countUpLabel.text = "0"
    }

    @IBAction func plus(_ sender: Any) {
        count += 1
        countUpLabel.text = String(count)
        if count >= 10 {
            changeTextColor()
        }
    }
    
    @IBAction func minus(_ sender: Any) {
        count -= 1
        countUpLabel.text = String(count)
        if count <= 0 {
            resetColor()
        }
    }
    
    func changeTextColor() {
        countUpLabel.textColor = .yellow
    }
    
    func resetColor() {
        countUpLabel.textColor = .red
    }
    
}

