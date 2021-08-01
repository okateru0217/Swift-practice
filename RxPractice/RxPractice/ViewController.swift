//
//  ViewController.swift
//  RxPractice
//
//  Created by 岡澤輝明 on 2021/07/25.
//

import UIKit
import RxSwift
import RxCocoa

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var textField: UITextField!
    
    let disposeBag = DisposeBag()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let relay = BehaviorRelay<String>(value: "")
        
        relay.subscribe {event in
            self.label.text = event
        }.disposed(by: disposeBag)

        textField.rx.text.orEmpty
            .bind(to: relay)
            .disposed(by: disposeBag)
    }

}
