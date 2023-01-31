//
//  MediaScreenView.swift
//  CalculatorNotes
//
//  Created by Liliana Porto Abdala on 16/01/23.
//

import UIKit

class DetailsScreenView: BaseView {
    
    var subject: Subject? {
        didSet {
            studentTextField.text = subject?.student
            subjectNameTextField.text = subject?.name
            // for note of notes
            if let note1 = subject?.notes[0] {
                note1TextField.text = String(note1)
            }
            if let note2 = subject?.notes[1] {
                note1TextField.text = String(note2)
            }
            if let note3 = subject?.notes[2] {
                note1TextField.text = String(note3)
            }
            if let note4 = subject?.notes[3] {
                note1TextField.text = String(note4)
            }
        }
    }
    
    lazy var studentTextField: UITextField = {
        let label = UITextField()
        label.text = "Nome do Aluno"
        label.font = .boldSystemFont(ofSize: 18)
        return label
    }()
    
    lazy var subjectNameTextField: UITextField = {
        let label = UITextField()
        label.text = "Matéria"
        return label
    }()
    
    lazy var note1TextField: UITextField = {
        let label = UITextField()
        label.text = "Nota 1"
        return label
    }()
    
    lazy var note2TextField: UITextField = {
        let label = UITextField()
        label.text = "Nota 2"
        return label
    }()
    
    lazy var note3TextField: UITextField = {
        let label = UITextField()
        label.text = "Nota 3"
        return label
    }()
    
    lazy var note4TextField: UITextField = {
        let label = UITextField()
        label.text = "Nota 4"
        return label
    }()
    
    lazy var buttonUpdate: UIButton = {
        let button = UIButton()
        button.setTitle("Update", for: .normal)
        button.backgroundColor = UIColor.init(rgb: 0xffd60a)
        button.setTitleColor(.white, for: .normal)
        button.layer.cornerRadius = 25
        return button
    }()
    
    override func addSubviews() {
        backgroundColor = UIColor.init(rgb: 0xe5e5e5)
        addSubview(studentTextField)
        addSubview(subjectNameTextField)
        addSubview(note1TextField)
        addSubview(note2TextField)
        addSubview(note3TextField)
        addSubview(note4TextField)
        addSubview(buttonUpdate)
    }
    
    override func setConstraints() {
        studentTextField.anchor(top: safeAreaLayoutGuide.topAnchor, leading: safeAreaLayoutGuide.leadingAnchor, bottom: nil, trailing: nil, padding: .init(top: 20, left: 16, bottom: 0, right: 0), size: .init(width: 200, height: 40))
        
        subjectNameTextField.anchor(top: studentTextField.bottomAnchor, leading: studentTextField.leadingAnchor, bottom: nil, trailing: nil, padding: .init(top: 10, left: 0, bottom: 0, right: 0), size: .init(width: 300, height: 100))
        
        note1TextField.anchor(top: subjectNameTextField.bottomAnchor, leading: subjectNameTextField.leadingAnchor, bottom: nil, trailing: nil, padding: .init(top: 10, left: 0, bottom: 0, right: 0), size: .init(width: 300, height: 100))
        
        note2TextField.anchor(top: note1TextField.bottomAnchor, leading: note1TextField.leadingAnchor, bottom: nil, trailing: nil, padding: .init(top: 10, left: 0, bottom: 0, right: 0), size: .init(width: 300, height: 100))
        
        note3TextField.anchor(top: note2TextField.bottomAnchor, leading: note2TextField.leadingAnchor, bottom: nil, trailing: nil, padding: .init(top: 10, left: 0, bottom: 0, right: 0), size: .init(width: 300, height: 100))
        
        note4TextField.anchor(top: note3TextField.bottomAnchor, leading: note3TextField.leadingAnchor, bottom: nil, trailing: nil, padding: .init(top: 10, left: 0, bottom: 0, right: 0), size: .init(width: 300, height: 100))
        
        buttonUpdate.anchor(top: note4TextField.bottomAnchor, leading: note4TextField.leadingAnchor, bottom: nil, trailing: nil, padding: .init(top: 10, left: 25, bottom: 0, right: 0), size: .init(width: 300, height: 50))
    }
}
