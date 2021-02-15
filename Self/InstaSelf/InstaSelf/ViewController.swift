//
//  ViewController.swift
//  InstaSelf
//
//  Created by 岡澤輝明 on 2021/02/14.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    @IBOutlet weak var logoImage: UIImageView!
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var passTextField: UITextField!
    
    @IBOutlet weak var displayUserName: UILabel!
    @IBOutlet weak var displayPassword: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        displayUserName.text = ""
        displayPassword.text = ""
        
        nameTextField.delegate = self
        passTextField.delegate = self
    }

    @IBAction func logInBtn(_ sender: Any) {
        logoImage.image = UIImage(named: "loginOK")
        displayUserName.text = nameTextField.text
        displayPassword.text = passTextField.text
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    
    // リターンキーでキーボードを閉じる
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
}

