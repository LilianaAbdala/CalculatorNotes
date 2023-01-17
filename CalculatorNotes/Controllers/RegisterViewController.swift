//
//  RegisterViewController.swift
//  CalculatorNotes
//
//  Created by Liliana Porto Abdala on 16/01/23.
//

import UIKit

class RegisterViewController: UIViewController {
    
    var registerScreenView = RegisterScreenView()
    
    var average = Average()
    
    let defString = String(stringLiteral: "")
    
    override func loadView() {
        view = registerScreenView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = view.bounds
         gradientLayer.colors = [
             UIColor.systemOrange.cgColor,
             UIColor.systemOrange.cgColor,
             UIColor.systemRed.cgColor,
             ]
        view.layer.addSublayer(gradientLayer)
        

        self.registerScreenView.buttonRegister.addTarget(self, action: #selector(validateField), for: .touchUpInside)
        
        self.registerScreenView.buttonRegister.addTarget(self, action: #selector(averageNotes), for: .touchUpInside)
    }
    
    @objc func averageNotes() {
        
        let note1: Double = Double(registerScreenView.note1TextField.text ?? defString) ?? 0.0
        let note2: Double = Double(registerScreenView.note2TextField.text ?? defString) ?? 0.0
        let note3: Double = Double(registerScreenView.note3TextField.text ?? defString) ?? 0.0
        let note4: Double = Double(registerScreenView.note4TextField.text ?? defString) ?? 0.0
        
        let resultAverage = average.calculate(note1, note2, note3, note4)
        
        print(resultAverage ?? "erro")
        
    }
    
    @objc func validateField() {
        if (self.registerScreenView.nameTextField.text?.isEmpty ?? false ||
            self.registerScreenView.mateTextField.text?.isEmpty ?? false) ||
            self.registerScreenView.note1TextField.text?.isEmpty ?? false {
            
            print("Preencha todos os campos")
        } else {
            registerNotes()
        }
    }
    
    func registerNotes() {
        let notes = Notes(
            name: registerScreenView.nameTextField.text,
            matter: registerScreenView.mateTextField.text,
            note1: registerScreenView.note1TextField.text,
            note2: registerScreenView.note2TextField.text,
            note3: registerScreenView.note3TextField.text,
            note4: registerScreenView.note4TextField.text)
        
    let listViewController = ListViewController()
        listViewController.getNotes(notes: notes)
        self.navigationController?.pushViewController(listViewController, animated: true)
    }
}
