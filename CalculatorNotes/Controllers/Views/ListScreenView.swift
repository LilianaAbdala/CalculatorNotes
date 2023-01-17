//
//  ListScreenView.swift
//  CalculatorNotes
//
//  Created by Liliana Porto Abdala on 16/01/23.
//

import UIKit

class ListScreenView: BaseView {
    
    let cellId = "cellId"
    
    lazy var layout: UICollectionViewFlowLayout = {
        let layout = UICollectionViewFlowLayout()
        layout.sectionInset = UIEdgeInsets(top: 20, left: 10, bottom: 10, right: 10)
        layout.itemSize = CGSize(width: 60, height: 60)
        return layout
    }()
    
    lazy var collectionView: UICollectionView = {
        let collectionView = UICollectionView(frame: bounds, collectionViewLayout: layout)
        collectionView.register(ListCollectionViewCell.self, forCellWithReuseIdentifier: cellId)
        return collectionView
    }()
    
    override func addSubviews() {
        addSubview(collectionView)
    }
    
    override func setConstraints() {
        collectionView.anchor(top: self.safeAreaLayoutGuide.topAnchor, leading: self.safeAreaLayoutGuide.leadingAnchor, bottom: self.safeAreaLayoutGuide.bottomAnchor, trailing: self.safeAreaLayoutGuide.trailingAnchor, padding: .init(top: 10, left: 10, bottom: 10, right: 10), size: .init(width: bounds.width, height: bounds.height))
    }
}
