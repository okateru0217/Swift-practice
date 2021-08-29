//
//  RxPracticeTableViewCell.swift
//  RxPractice
//
//  Created by 岡澤輝明 on 2021/08/02.
//

import UIKit

class RxPracticeTableViewCell: UITableViewCell {
    
    @IBOutlet weak var numberLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func setCell(number: TestModel) {
        self.numberLabel.text = number.number as String
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
