//
//  NumbersCollectionView.swift
//  GameNumber
//
//  Created by Marat Shagiakhmetov on 25.03.2023.
//

import UIKit

class NumbersCollectionView: UICollectionView {
    private let numberLayout = UICollectionViewFlowLayout()
    
    private let numbers = Array(1...100).shuffled()
    
    override init(frame: CGRect, collectionViewLayout layout: UICollectionViewLayout) {
        super.init(frame: frame, collectionViewLayout: numberLayout)
        
        setViews()
        setDelegate()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setViews() {
        backgroundColor = .black
        translatesAutoresizingMaskIntoConstraints = false
        
        numberLayout.minimumInteritemSpacing = 3
        numberLayout.minimumLineSpacing = 3
        
        register(NumbersCollectionViewCell.self,
                 forCellWithReuseIdentifier: NumbersCollectionViewCell.idNumbersCell)
    }
    
    private func setDelegate() {
        delegate = self
        dataSource = self
    }
}

extension NumbersCollectionView: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        numbers.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = dequeueReusableCell(
            withReuseIdentifier: NumbersCollectionViewCell.idNumbersCell,
            for: indexPath) as? NumbersCollectionViewCell else {
            return UICollectionViewCell()
        }
        let number = numbers[indexPath.item]
        cell.numbersForCell(number: number)
        return cell
    }
}

extension NumbersCollectionView: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        CGSize(width: collectionView.frame.width / 11,
               height: collectionView.frame.height / 11)
    }
}

extension NumbersCollectionView: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print(indexPath)
    }
}
