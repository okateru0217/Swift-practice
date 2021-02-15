//
//  ViewController.swift
//  StructSelfApp
//
//  Created by 岡澤輝明 on 2021/02/15.
//

import UIKit

class ViewController: UIViewController, CatchProtocol {
    
    @IBOutlet weak var label: UILabel!
    var count = 0
    
   
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func catchData(count: Int) {
        label.text = String(count)
    }
    
    @IBAction func next(_ sender: Any) {
        performSegue(withIdentifier: "next", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let nextVC = segue.destination as! NextViewController
        nextVC.delegate = self
    }
}

