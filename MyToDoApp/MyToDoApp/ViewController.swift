//
//  ViewController.swift
//  MyToDoApp
//
//  Created by 岡澤輝明 on 2021/02/15.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    var taskArr = [String]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func addListBtn(_ sender: Any) {
        // アラートを宣言
        let alert = UIAlertController(title: "タスクの入力", message: nil, preferredStyle: .alert)
        // アラートにテキストフィールドを追加
        alert.addTextField(configurationHandler: nil)
        // 「追加」ボタン追加
        alert.addAction(UIAlertAction (
            title: "追加する",
            style: .default,
            handler: {(action: UIAlertAction) in
                self.taskArr.insert((alert.textFields?.first?.text)!, at: 0)
                self.tableView.insertRows(at: [IndexPath(row: 0, section: 0)], with: UITableView.RowAnimation.right)
            }
        ))
        // キャンセルボタン追加
        alert.addAction(UIAlertAction(
            title: "キャンセル",
            style: .cancel,
            handler: nil
        ))
        // アラートボタンを出現させる
        present(alert, animated: true, completion: nil)
    }
    
    // セルの数を指定
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return taskArr.count
    }
    
    // セルに値を設定
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = taskArr[indexPath.row]
        return cell
    }
    
    // テーブルセル押下時の処理
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        // 編集モーダルを定義
        let alert = UIAlertController(title: "タスクの編集", message: nil, preferredStyle: .alert)
        // 編集モーダルにテキストフィールドを追加
        alert.addTextField(configurationHandler: nil)
        // テキストフィールドに、編集するタスクを表示
        alert.textFields?.first?.text = taskArr[indexPath.row]
        
        // OKボタン押下時の処理
        alert.addAction(UIAlertAction(
            title: "OK",
            style: .default,
            handler: {(alert: UIAlertAction) in
                // 配列を置き換える
                self.taskArr[indexPath.row] = (alert.textFields?.first?.text)!
                tableView.reloadRows(at: [indexPath as IndexPath], with: .none)
            }
        ))
        // キャンセルボタン押下時の処理
        alert.addAction(UIAlertAction(
            title: "キャンセル",
            style: .cancel,
            handler: nil
        ))
        // モーダルを出現させる
        present(alert, animated: true, completion: nil)
    }
    
    // タスクの削除機能
    // セルの編集許可
    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    // スワイプしたセルを削除
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == UITableViewCell.EditingStyle.delete {
            taskArr.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath as IndexPath], with: UITableView.RowAnimation.automatic)
        }
    }
}
