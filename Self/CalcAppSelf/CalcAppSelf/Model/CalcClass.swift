//
//  CalcClass.swift
//  CalcAppSelf
//
//  Created by 岡澤輝明 on 2021/02/14.
//

import Foundation

class Calc {
    var plus = 10
    var minus = 20
    var addResult = 0
    var minusResult = 0
    
    func add () {
        addResult = plus + minus
        minusResult = plus - minus
    }
}
