//
//  NextViewController.swift
//  TableViewBasic
//
//  Created by 岡澤輝明 on 2021/02/11.
//

import UIKit

class NextViewController: UIViewController {
    
    var toDoString = String()
    @IBOutlet weak var todoLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        todoLabel.text = toDoString
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
