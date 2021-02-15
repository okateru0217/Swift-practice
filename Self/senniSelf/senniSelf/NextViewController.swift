//
//  NextViewController.swift
//  senniSelf
//
//  Created by 岡澤輝明 on 2021/02/14.
//

import UIKit

class NextViewController: UIViewController {
    
    @IBOutlet weak var passedLabel: UILabel!
    var passedCount = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        passedLabel.text = String(passedCount)

        // Do any additional setup after loading the view.
    }
    
    @IBAction func backBtn(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
