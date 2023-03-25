//
//  UILabel + Extensions.swift
//  GameNumber
//
//  Created by Marat Shagiakhmetov on 25.03.2023.
//

import UIKit

extension UILabel {
    convenience init(text: String, color: UIColor = .white) {
        self.init()
        self.text = text
        self.textColor = color
        self.adjustsFontSizeToFitWidth = true
        self.minimumScaleFactor = 0.5
        self.translatesAutoresizingMaskIntoConstraints = false
    }
}
