//
//  MediaScreenView.swift
//  CalculatorNotes
//
//  Created by Liliana Porto Abdala on 16/01/23.
//

import UIKit

class DetailsScreenView: BaseView {
    
    var notes: Notes? {
        didSet {
            nameTextField.text = notes?.name
            matterTextField.text = notes?.matter
            note1TextField.text = notes?.note1
            note2TextField.text = notes?.note2
            note3TextField.text = notes?.note3
            note4TextField.text = notes?.note4
            
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
    
    lazy var note1TextField: UILabel = {
        let label = UILabel()
        label.text = "Nota 1"
        return label
    }()
    
    lazy var note2TextField: UILabel = {
        let label = UILabel()
        label.text = "Nota 2"
        return label
    }()
    
    lazy var note3TextField: UILabel = {
        let label = UILabel()
        label.text = "Nota 3"
        return label
    }()
    
    lazy var note4TextField: UILabel = {
        let label = UILabel()
        label.text = "Nota 4"
        return label
    }()
    override func addSubviews() {
        backgroundColor = .white
        
        addSubview(nameTextField)
        addSubview(matterTextField)
        addSubview(note1TextField)
        addSubview(note2TextField)
        addSubview(note3TextField)
        addSubview(note4TextField)

    }
    
    override func setConstraints() {
        nameTextField.anchor(top: safeAreaLayoutGuide.topAnchor, leading: safeAreaLayoutGuide.leadingAnchor, bottom: nil, trailing: nil, padding: .init(top: 100, left: 16, bottom: 0, right: 0), size: .init(width: 200, height: 40))
        
        matterTextField.anchor(top: nameTextField.bottomAnchor, leading: nameTextField.leadingAnchor, bottom: nil, trailing: nil, padding: .init(top: 10, left: 0, bottom: 0, right: 0), size: .init(width: 300, height: 100))
        
        note1TextField.anchor(top: matterTextField.bottomAnchor, leading: matterTextField.leadingAnchor, bottom: nil, trailing: nil, padding: .init(top: 10, left: 0, bottom: 0, right: 0), size: .init(width: 300, height: 100))
        
        note2TextField.anchor(top: note1TextField.bottomAnchor, leading: note1TextField.leadingAnchor, bottom: nil, trailing: nil, padding: .init(top: 10, left: 0, bottom: 0, right: 0), size: .init(width: 300, height: 100))
        
        note3TextField.anchor(top: note2TextField.bottomAnchor, leading: note2TextField.leadingAnchor, bottom: nil, trailing: nil, padding: .init(top: 10, left: 0, bottom: 0, right: 0), size: .init(width: 300, height: 100))
        
        note4TextField.anchor(top: note3TextField.bottomAnchor, leading: note3TextField.leadingAnchor, bottom: nil, trailing: nil, padding: .init(top: 10, left: 0, bottom: 0, right: 0), size: .init(width: 300, height: 100))
        
        
    }
}
