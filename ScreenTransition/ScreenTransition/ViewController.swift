//
//  ViewController.swift
//  ScreenTransition
//
//  Created by 岡澤輝明 on 2021/02/11.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var label: UILabel!
    
    var count = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func plus(_ sender: Any) {
        
        count += 1
        
        label.text = String(count)
        
        if count == 10 {
            performSegue(withIdentifier: "next", sender: nil)
        }
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let nextVC = segue.destination as! NextViewController
        nextVC.count2 = count
    }
    
}

