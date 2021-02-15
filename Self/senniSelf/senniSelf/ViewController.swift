//
//  ViewController.swift
//  senniSelf
//
//  Created by 岡澤輝明 on 2021/02/14.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var countLabel: UILabel!
    var count = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func countBtn(_ sender: Any) {
        count += 1
        countLabel.text = String(count)
        if count % 10 == 0 {
            performSegue(withIdentifier: "next", sender: nil)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let nextVC = segue.destination as! NextViewController
        nextVC.passedCount = count
    }
    
}

