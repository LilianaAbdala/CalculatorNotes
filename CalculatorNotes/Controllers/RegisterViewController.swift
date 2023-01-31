//
//  RegisterViewController.swift
//  CalculatorNotes
//
//  Created by Liliana Porto Abdala on 16/01/23.
//

import UIKit

class RegisterViewController: UIViewController {
    
    var registerScreenView = RegisterScreenView()
    var subject = [Subject]()
    
    override func loadView() {
        view = registerScreenView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.registerScreenView.buttonRegister.addTarget(self, action: #selector(validateField), for: .touchUpInside)
    }
    
    @objc func validateField() {
        if (isEmpty(textField: self.registerScreenView.studentTextField) ||
            isEmpty(textField: self.registerScreenView.subjectNameTextField) ||
            isEmpty(textField: self.registerScreenView.note1TextField) ||
            isEmpty(textField: self.registerScreenView.note2TextField) ||
            isEmpty(textField: self.registerScreenView.note3TextField) ||
            isEmpty(textField: self.registerScreenView.note4TextField)) {
            
            print("Preencha todos os campos")
        } else {
            registerSubject()
        }
    }
    
    func isEmpty(textField: UITextField) -> Bool {
        return textField.text?.isEmpty ?? true
    }
    
    func registerSubject() {
        let subject = Subject()
        
        subject.student = registerScreenView.studentTextField.text
        subject.name = registerScreenView.subjectNameTextField.text
        subject.notes = [
            Double(registerScreenView.note1TextField.text!) ?? 0.0,
            Double(registerScreenView.note2TextField.text!) ?? 0.0,
            Double(registerScreenView.note3TextField.text!) ?? 0.0,
            Double(registerScreenView.note4TextField.text!) ?? 0.0
        ]
        
        print(subject.calculateAverage())
        
        if let json = try? JSONEncoder().encode(self.subject) {
                    UserDefaults.standard.set(json, forKey: "subject")
                }
        
        let listViewController = ListViewController()
        StudentMock.studentMock.sub.append(subject)
        listViewController.setSubjects(subjects: StudentMock.studentMock.sub)
        self.navigationController?.pushViewController(listViewController, animated: true)
    }
}
