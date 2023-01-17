//
//  RegisterScreenView.swift
//  CalculatorNotes
//
//  Created by Liliana Porto Abdala on 16/01/23.
//

import UIKit

class RegisterScreenView: BaseView {
    
lazy var nameTextField: UITextField = {
    let name = UITextField()
    name.placeholder = " Nome do Aluno"
    name.backgroundColor = .white
    name.layer.cornerRadius = 10
    name.layer.borderWidth = 2
    name.layer.borderColor = UIColor.white.cgColor
    return name
}()

lazy var mateTextField: UITextField = {
    let mate = UITextField()
    mate.placeholder = " Matéria"
    mate.backgroundColor = .white
    mate.layer.cornerRadius = 10
    mate.layer.borderWidth = 2
    mate.layer.borderColor = UIColor.white.cgColor
    return mate
}()

lazy var note1TextField: UITextField = {
    let nota = UITextField()
    nota.placeholder = " Nota 1"
    nota.backgroundColor = .white
    nota.layer.cornerRadius = 10
    nota.layer.borderWidth = 2
    nota.layer.borderColor = UIColor.white.cgColor
    return nota
}()
    
lazy var note2TextField: UITextField = {
    let nota = UITextField()
    nota.placeholder = " Nota 2"
    nota.backgroundColor = .white
    nota.layer.cornerRadius = 10
    nota.layer.borderWidth = 2
    nota.layer.borderColor = UIColor.white.cgColor
    return nota
}()
    
lazy var note3TextField: UITextField = {
    let nota = UITextField()
    nota.placeholder = " Nota 3"
    nota.backgroundColor = .white
    nota.layer.cornerRadius = 10
    nota.layer.borderWidth = 2
    nota.layer.borderColor = UIColor.white.cgColor
    return nota
}()
lazy var note4TextField: UITextField = {
    let nota = UITextField()
    nota.placeholder = " Nota 4"
    nota.backgroundColor = .white
    nota.layer.cornerRadius = 10
    nota.layer.borderWidth = 2
    nota.layer.borderColor = UIColor.white.cgColor
    return nota
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
        
            addSubview(nameTextField)
            addSubview(mateTextField)
            addSubview(note1TextField)
            addSubview(note2TextField)
            addSubview(note3TextField)
            addSubview(note4TextField)
            addSubview(buttonRegister)
            addSubview(resultLabel)
}
    
    override func setConstraints() {
        
        nameTextField.anchor(top: safeAreaLayoutGuide.topAnchor, leading: safeAreaLayoutGuide.leadingAnchor, bottom: nil, trailing: safeAreaLayoutGuide.trailingAnchor, padding: .init(top: 70, left: 16, bottom: 0, right: 16), size: .init(width: 363, height: 40))
        
        mateTextField.anchor(top: nameTextField.bottomAnchor, leading: nameTextField.leadingAnchor, bottom: nil, trailing: nameTextField.trailingAnchor, padding: .init(top: 10, left: 0, bottom: 0, right: 0), size: .init(width: 363, height: 50))
        
        note1TextField.anchor(top: mateTextField.bottomAnchor, leading: mateTextField.leadingAnchor, bottom: nil, trailing: mateTextField.trailingAnchor, padding: .init(top: 10, left: 0, bottom: 0, right: 0), size: .init(width: 363, height: 50))
        
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


