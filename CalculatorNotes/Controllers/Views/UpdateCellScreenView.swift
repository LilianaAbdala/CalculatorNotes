//
//  EditCellScreenView.swift
//  CalculatorNotes
//
//  Created by Liliana Porto Abdala on 26/01/23.
//

import UIKit

class UpdateCellScreenView: BaseView {
    
    var subject: Subject?
    
    func createTextField(placeholder: String) -> UITextField {
        let generic = UITextField()
        generic.placeholder = placeholder
        generic.backgroundColor = .white
        generic.layer.cornerRadius = 10
        generic.layer.borderWidth = 2
        generic.layer.borderColor = UIColor.white.cgColor
        return generic
    }
    
    lazy var studentTextField: UITextField = {
        return createTextField(placeholder: " Nome do aluno")
    }()
    
    lazy var subjectNameTextField: UITextField = {
        return createTextField(placeholder: " Matéria")
    }()
    
    lazy var note1TextField: UITextField = {
        return createTextField(placeholder: " Nota 1")
    }()
    
    lazy var note2TextField: UITextField = {
        return createTextField(placeholder: " Nota 2")
    }()
    
    lazy var note3TextField: UITextField = {
        return createTextField(placeholder: " Nota 3")
    }()
    
    lazy var note4TextField: UITextField = {
        return createTextField(placeholder: " Nota 4")
    }()
    
    lazy var buttonUpdate: UIButton = {
        let button = UIButton()
        button.setTitle("Cadastrar", for: .normal)
        button.backgroundColor = UIColor.init(rgb: 0xffd60a)
        button.setTitleColor(.white, for: .normal)
        button.layer.cornerRadius = 25
        return button
    }()
    
    override func addSubviews() {
        addSubview(buttonUpdate)
        addSubview(studentTextField)
        addSubview(subjectNameTextField)
        addSubview(note1TextField)
        addSubview(note2TextField)
        addSubview(note3TextField)
        addSubview(note4TextField)
        
    }
    
}
