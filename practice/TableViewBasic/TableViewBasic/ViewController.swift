//
//  ViewController.swift
//  TableViewBasic
//
//  Created by 岡澤輝明 on 2021/02/11.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, UITextFieldDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    
    @IBOutlet weak var textField: UITextField!
    
    var textArray = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        textField.delegate = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        print(indexPath.row)
        cell.textLabel?.text = textArray[indexPath.row]
        cell.imageView!.image = UIImage(named: "checkImage")
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        // タップした時にその配列の番号の中身を取りだして、値を渡す
        let nextVC = storyboard?.instantiateViewController(identifier: "next") as! NextViewController
        
        nextVC.toDoString = textArray[indexPath.row]
        
        navigationController?.pushViewController(nextVC, animated: true)
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return view.frame.size.height / 6
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textArray.append(textField.text!)
        textField.resignFirstResponder()
        textField.text = ""
        tableView.reloadData()
        
        return true
    }

}

