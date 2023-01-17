//
//  MediaViewController.swift
//  CalculatorNotes
//
//  Created by Liliana Porto Abdala on 16/01/23.
//

import UIKit

class ListViewController: UIViewController {
    
    var listScreenView = ListScreenView()
    var notes: [Notes]?

    override func loadView() {
        view = listScreenView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        listScreenView.collectionView.delegate = self
        listScreenView.collectionView.dataSource = self
    }
    
    func getNotes(notes: Notes) {
        self.notes = [notes]
    }
}

extension ListViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        if let count = self.notes?.count {
            return count
        }
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: listScreenView.cellId, for: indexPath) as? ListCollectionViewCell
        
        if let item = self.notes?[indexPath.item] {
            cell?.notes = item
        }
        
        return cell ?? UICollectionViewCell()
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.width, height: 200)
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let detailsViewController = DetailsViewController()
        if let notes = self.notes {
            detailsViewController.getNotes(notes: notes[indexPath.item])
        }
        self.navigationController?.pushViewController(detailsViewController, animated: true)
    }
}
    
    


