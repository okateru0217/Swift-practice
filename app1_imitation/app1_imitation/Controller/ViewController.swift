//
//  ViewController.swift
//  app1_imitation
//
//  Created by 岡澤輝明 on 2021/09/08.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak private var tableView: UITableView!
    
    private let task = [2, 2, 2]

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        
        tableViewRegister()
        // Do any additional setup after loading the view.
    }


}


extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return task.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCell
            return cell
    }
    
    func tableViewRegister() {
        tableView.register(UINib(nibName: "TableViewCell", bundle: nil), forCellReuseIdentifier: "cell")
    }
    
    func tableViewFooterCellConfig() {
        let footerCell: UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "addListCell")!
        let footerView: UIView = footerCell.contentView
        tableView.tableFooterView = footerView
    }
    
    
}
