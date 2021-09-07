//
//  ShadowView.swift
//  RxPractice
//
//  Created by 岡澤輝明 on 2021/09/02.
//

import UIKit

class ShadowView: UIView {

    override var bounds: CGRect {
        didSet {
            setupShadow()
        }
    }

    private func setupShadow() {
        self.layer.cornerRadius = 25
        self.layer.shadowOffset = CGSize(width: 0, height: 6)
        self.layer.shadowRadius = 10
        self.layer.shadowOpacity = 0.1
//        self.layer.shadowPath = UIBezierPath(roundedRect: self.bounds, byRoundingCorners: .allCorners, cornerRadii: CGSize(width: 3, height: 3)).cgPath
        self.layer.shouldRasterize = true
        self.layer.rasterizationScale = UIScreen.main.scale
    }
}
