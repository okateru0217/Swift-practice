//
//  ViewController.swift
//  TableViewPractice
//
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var tableView: UITableView!
    
    // ① 追加:表示させるデータを配列へ格納
    var data = ["cell1", "cell2", "cell3"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    // ② 追加:表示させるセルの数を指定
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    // ③ 追加:表示させるせるの中身を指定
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // 任意で決めたcellのIDを指定
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        // 表示するデータ(配列)を全て変数へ代入する
        let displayData = data[indexPath.row]
        // セルにデータを全て表示させる
        cell.textLabel?.text = displayData
        return cell
    }
}

