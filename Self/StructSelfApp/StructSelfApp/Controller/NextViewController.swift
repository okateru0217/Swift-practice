//
//  NextViewController.swift
//  StructSelfApp
//
//  Created by 岡澤輝明 on 2021/02/15.
//

import UIKit

protocol CatchProtocol {
    func catchData(count: Int)
}

class NextViewController: UIViewController {
    
    @IBOutlet weak var label: UILabel!
    var count = 0
    var delegate:CatchProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func back(_ sender: Any) {
        delegate?.catchData(count: count)
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func plusAction(_ sender: Any) {
        count += 1
        label.text = String(count)
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
