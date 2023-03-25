//
//  GameNumberViewController.swift
//  GameNumber
//
//  Created by Marat Shagiakhmetov on 25.03.2023.
//

import UIKit

class GameNumberViewController: UIViewController {
    
    private let numbersCollectionView = NumbersCollectionView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
        setContraints()
    }
    
    private func setupViews() {
        view.backgroundColor = .black
        view.addSubview(numbersCollectionView)
    }
    
    private func setContraints() {
        NSLayoutConstraint.activate([
            numbersCollectionView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10),
            numbersCollectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            numbersCollectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10),
            numbersCollectionView.heightAnchor.constraint(equalTo: numbersCollectionView.widthAnchor)
        ])
    }
}

