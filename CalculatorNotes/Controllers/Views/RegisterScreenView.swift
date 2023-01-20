//
//  RegisterScreenView.swift
//  CalculatorNotes
//
//  Created by Liliana Porto Abdala on 16/01/23.
//

import UIKit

class RegisterScreenView: BaseView {
    
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
    
    lazy var buttonRegister: UIButton = {
        let button = UIButton()
        button.setTitle("Cadastrar", for: .normal)
        button.backgroundColor = .systemYellow
        button.setTitleColor(.white, for: .normal)
        button.layer.cornerRadius = 25
        return button
    }()
    
    lazy var resultLabel: UILabel = {
        let lblR = UILabel()
        lblR.textAlignment = .center
        lblR.text = "Prencha todos os campos"
        lblR.textColor = .white
        lblR.font = UIFont.systemFont(ofSize: 18)
        return lblR
    }()
    
    override func addSubviews() {
        backgroundColor = UIColor.init(rgb: 0x219EBC)
        addSubview(studentTextField)
        addSubview(subjectNameTextField)
        addSubview(note1TextField)
        addSubview(note2TextField)
        addSubview(note3TextField)
        addSubview(note4TextField)
        addSubview(buttonRegister)
        addSubview(resultLabel)
    }
    
    override func setConstraints() {
        
        studentTextField.anchor(top: safeAreaLayoutGuide.topAnchor, leading: safeAreaLayoutGuide.leadingAnchor, bottom: nil, trailing: safeAreaLayoutGuide.trailingAnchor, padding: .init(top: 70, left: 16, bottom: 0, right: 16), size: .init(width: 363, height: 40))
        
        subjectNameTextField.anchor(top: studentTextField.bottomAnchor, leading: studentTextField.leadingAnchor, bottom: nil, trailing: studentTextField.trailingAnchor, padding: .init(top: 10, left: 0, bottom: 0, right: 0), size: .init(width: 363, height: 50))
        
        note1TextField.anchor(top: subjectNameTextField.bottomAnchor, leading: subjectNameTextField.leadingAnchor, bottom: nil, trailing: subjectNameTextField.trailingAnchor, padding: .init(top: 10, left: 0, bottom: 0, right: 0), size: .init(width: 363, height: 50))
        
        note2TextField.centerXAnchor.constraint(equalTo: safeAreaLayoutGuide.centerXAnchor).isActive = true
        note2TextField.anchor(top: note1TextField.bottomAnchor, leading: nil, bottom: nil, trailing: note1TextField.trailingAnchor, padding: .init(top: 10, left: 0, bottom: 0, right: 0), size: .init(width: 363, height: 50))
        
        note3TextField.centerXAnchor.constraint(equalTo: safeAreaLayoutGuide.centerXAnchor).isActive = true
        note3TextField.anchor(top: note2TextField.bottomAnchor, leading: nil, bottom: nil, trailing: note2TextField.trailingAnchor, padding: .init(top: 10, left: 0, bottom: 0, right: 0), size: .init(width: 363, height: 50))
        
        note4TextField.centerXAnchor.constraint(equalTo: safeAreaLayoutGuide.centerXAnchor).isActive = true
        note4TextField.anchor(top: note3TextField.bottomAnchor, leading: nil, bottom: nil, trailing: note3TextField.trailingAnchor, padding: .init(top: 10, left: 0, bottom: 0, right: 0), size: .init(width: 363, height: 50))
        
        buttonRegister.centerXAnchor.constraint(equalTo: safeAreaLayoutGuide.centerXAnchor).isActive = true
        buttonRegister.anchor(top: note4TextField.bottomAnchor, leading: nil, bottom: nil, trailing: nil, padding: .init(top: 50, left: 0, bottom: 0, right: 0), size: .init(width: 150, height: 50))
        
        resultLabel.centerXAnchor.constraint(equalTo: safeAreaLayoutGuide.centerXAnchor).isActive = true
        resultLabel.anchor(top: buttonRegister.bottomAnchor, leading: nil, bottom: nil, trailing: nil, padding: .init(top: 50, left: 0, bottom: 0, right: 0), size: .init(width: 300, height: 50))
        
    }
}


