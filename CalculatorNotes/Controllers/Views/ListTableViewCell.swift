//
//  ListCollectionViewCell.swift
//  CalculatorNotes
//
//  Created by Liliana Porto Abdala on 16/01/23.
//

import UIKit

class ListTableViewCell: BaseTableCell {
    
    var subject: Subject? {
        didSet {
            studentTextField.text = subject?.student
            subjectNameTextField.text = subject?.name
            
            if let value = subject?.calculateAverage() {
                averageTextField.text = String(value)
            }
        }
    }
    
    lazy var container: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.init(rgb: 0xffffff)
        view.layer.cornerRadius = 20
        view.layer.masksToBounds = true
        return view
    }()
    
    lazy var studentTextField: UILabel = {
        let label = UILabel()
        label.text = "Nome do Aluno"
        label.font = .boldSystemFont(ofSize: 18)
        return label
    }()
    
    lazy var subjectNameTextField: UILabel = {
        let label = UILabel()
        label.text = "Matéria"
        return label
    }()
    
    lazy var averageTextField: UILabel = {
        let label = UILabel()
        label.text = "Média"
        return label
    }()
    
    lazy var buttonDelete: UIButton = {
        let button = UIButton()
        button.setTitle("Delete", for: .normal)
        button.backgroundColor = UIColor.init(rgb: 0xffc300)
        button.setTitleColor(.white, for: .normal)
        button.layer.cornerRadius = 15
        return button
    }()
    
    lazy var buttonUpdate: UIButton = {
        let button = UIButton()
        button.setTitle("Update", for: .normal)
        button.backgroundColor = UIColor.init(rgb: 0xffc300)
        button.setTitleColor(.white, for: .normal)
        button.layer.cornerRadius = 15
        return button
    }()
    
    override func addSubviews() {
        backgroundColor =  UIColor.init(rgb: 0xe5e5e5)
        addSubview(container)
        container.addSubview(studentTextField)
        container.addSubview(subjectNameTextField)
        container.addSubview(averageTextField)
        container.addSubview(buttonDelete)
        container.addSubview(buttonUpdate)
    }
    
    override func addConstraints() {
        
        container.anchor(top: safeAreaLayoutGuide.topAnchor, leading: safeAreaLayoutGuide.leadingAnchor, bottom: safeAreaLayoutGuide.bottomAnchor, trailing: safeAreaLayoutGuide.trailingAnchor, padding: .init(top: 20, left: 20, bottom: 20, right: 20), size: .init(width: frame.width, height: 190))
        
        studentTextField.anchor(top: container.topAnchor, leading: container.leadingAnchor, bottom: nil, trailing: nil, padding: .init(top: -10, left: 20, bottom: 0, right: 0), size: .init(width: 600, height: 50))
        
        subjectNameTextField.anchor(top: studentTextField.bottomAnchor, leading: studentTextField.leadingAnchor, bottom: nil, trailing: nil, padding: .init(top: 0, left: 0, bottom: 0, right: 0), size: .init(width: 300, height: 50))
        
        averageTextField.anchor(top: subjectNameTextField.bottomAnchor, leading: subjectNameTextField.leadingAnchor, bottom: nil, trailing: nil, padding: .init(top: 3, left: 0, bottom: 0, right: 0), size: .init(width: 300, height: 50))
        
        buttonDelete.anchor(top: averageTextField.bottomAnchor, leading: averageTextField.leadingAnchor, bottom: nil, trailing: nil, padding: .init(top: 3, left: 50, bottom: 0, right: 0), size: .init(width: 100, height: 30))
        
        buttonUpdate.anchor(top: buttonDelete.bottomAnchor, leading: buttonDelete.leadingAnchor, bottom: nil, trailing: nil, padding: .init(top: -30, left: 110, bottom: 0, right: 0), size: .init(width: 100, height: 30))
        
    }
}
