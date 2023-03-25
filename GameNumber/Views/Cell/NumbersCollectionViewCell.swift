//
//  NumbersCollectionViewCell.swift
//  GameNumber
//
//  Created by Marat Shagiakhmetov on 25.03.2023.
//

import UIKit

class NumbersCollectionViewCell: UICollectionViewCell {
    static let idNumbersCell = "idNumbersCell"
    
    private let numberLabel = UILabel(text: "")
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setViews()
        setConstraints()
    }
    
    private func setViews() {
        backgroundColor = .black
        layer.cornerRadius = 10
        layer.borderWidth = 2
        layer.borderColor = UIColor.white.cgColor
        
        addSubview(numberLabel)
    }
    
    func numbersForCell(number: Int) {
        numberLabel.text = "\(number)"
    }
    
    private func setConstraints() {
        NSLayoutConstraint.activate([
            numberLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            numberLabel.centerYAnchor.constraint(equalTo: centerYAnchor)
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
