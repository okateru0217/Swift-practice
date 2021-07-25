//
//  ViewController.swift
//  UnitTest
//
//  Created by 岡澤輝明 on 2021/05/03.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var testTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        testTableView.register(UINib(nibName: "TestTableViewCell", bundle: nil), forCellReuseIdentifier: "TestTableViewCell")
        
        
        let result = plus(a: 5, b: 10)
        print(result)
        let multiResult = multi(a: 3, b: 4)
        print(multiResult)
        // Do any additional setup after loading the view.
    }

    func plus(a: Int, b: Int) -> Int {
        return a + b
    }
    
    func multi(a: Int, b: Int) -> Int {
        let multiResult = a * b
        return multiResult - 10
    }
    
    func safeDivision(x: Int, y: Int) -> Int? {
        if y == 0 {
            return nil
        } else {
            return x / y
        }
    }

}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TestTableViewCell", for: indexPath) as! TestTableViewCell
        
        return cell
    }
    
    
}
