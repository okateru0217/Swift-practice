//
//  ViewController.swift
//  keybord
//
//  Created by 岡澤輝明 on 2021/02/11.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var logoImageView: UIImageView!
    
    @IBOutlet weak var userNameTextField: UITextField!
    
    @IBOutlet weak var passWordTextField: UITextField!
    
    @IBOutlet weak var userNameLabel: UILabel!
    
    @IBOutlet weak var passwordLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        userNameTextField.delegate = self
        passWordTextField.delegate = self
    }

    @IBAction func login(_ sender: Any) {
        
        logoImageView.image = UIImage(named: "loginOK")
        
        userNameLabel.text = userNameTextField.text
        passwordLabel.text = passWordTextField.text
    }
    
    // タッチでキーボードを閉じる
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    
    // リターンキー押下時、キーボードを閉じる
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        // キーボードを閉じる
        textField.resignFirstResponder()
        return true
    }
}

