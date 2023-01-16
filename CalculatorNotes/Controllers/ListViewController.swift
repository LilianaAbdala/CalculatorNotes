//
//  MediaViewController.swift
//  CalculatorNotes
//
//  Created by Liliana Porto Abdala on 16/01/23.
//

import UIKit

class MediaViewController: UIViewController {
    
    var mediaScreenView = MediaScreenView()
    var notes: [Notes]?

    override func loadView() {
        view = mediaScreenView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        media.collectionView.delegate = self
        homeScreenView.collectionView.dataSource = self
    }
    
    func getNotes(notes: Notes) {
        self.notes = [notes]
    }
}

extension HomeViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        if let count = self.notes?.count {
            return count
        }
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: homeScreenView.cellId, for: indexPath) as? HomeCollectionViewCell
        
        if let item = self.receita?[indexPath.item] {
            cell?.receita = item
        }
        
        return cell ?? UICollectionViewCell()
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.width, height: 250)
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let bookingViewController = BookingViewController()
        if let receita = self.receita {
            bookingViewController.getRecipe(receita: receita[indexPath.item])
        }
        self.navigationController?.pushViewController(bookingViewController, animated: true)
    }
}
    }
    

}
