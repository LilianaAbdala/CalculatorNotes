//
//  ListCollectionViewCell.swift
//  CalculatorNotes
//
//  Created by Liliana Porto Abdala on 16/01/23.
//

import UIKit

class ListTableViewCell: BaseCell {
    
    var notes: Notes? {
        didSet {
            nameTextField.text = notes?.name
            matterTextField.text = notes?.matter
            mediaTextField.text = notes?.media
        }
    }
    
    lazy var nameTextField: UILabel = {
        let label = UILabel()
        label.text = "Nome do Aluno"
        label.font = .boldSystemFont(ofSize: 18)
        return label
    }()

    lazy var matterTextField: UILabel = {
        let label = UILabel()
        label.text = "Matéria"
        return label
    }()
    
    lazy var mediaTextField: UILabel = {
        let label = UILabel()
        label.text = "Média"
        return label
    }()

    
    override func addSubviews() {
        backgroundColor = .systemOrange
        addSubview(nameTextField)
        addSubview(matterTextField)
        addSubview(mediaTextField)
    }
    
    override func addConstraints() {
        
        nameTextField.anchor(top: self.topAnchor, leading: self.leadingAnchor, bottom: nil, trailing: nil, padding: .init(top: 10, left: 10, bottom: 0, right: 0), size: .init(width: 200, height: 40))
        
        matterTextField.anchor(top: nameTextField.bottomAnchor, leading: nameTextField.leadingAnchor, bottom: nil, trailing: nil, padding: .init(top: 10, left: 0, bottom: 0, right: 0), size: .init(width: 300, height: 100))
        
        mediaTextField.anchor(top: matterTextField.bottomAnchor, leading: matterTextField.leadingAnchor, bottom: nil, trailing: nil, padding: .init(top: 10, left: 0, bottom: 0, right: 0), size: .init(width: 300, height: 100))
        
    }
}
