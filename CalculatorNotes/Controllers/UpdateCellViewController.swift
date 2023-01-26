//
//  EditCellViewController.swift
//  CalculatorNotes
//
//  Created by Liliana Porto Abdala on 26/01/23.
//


import UIKit
class EditCellViewController: UIViewController {
    let editCellScreen = EditCellScreenView()
    
    override func loadView() {
        view = editCellScreen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        editCellScreen.buttonUpdate.addTarget(self, action: #selector(updateData), for: .touchUpInside)
    }
    
    func getSubject(subjects: Subject) {
        editCellScreen.subject = subjects
    }
    
    @objc func updateData() {
        let subjectUpdated = Subject()
        subjectUpdated.student = editCellScreen.studentTextField.text
        subjectUpdated.name = editCellScreen.subjectNameTextField.text
        subjectUpdated.notes.append(Double(editCellScreen.note1TextField.text ?? "") ?? 0.0)
        subjectUpdated.notes.append(Double(editCellScreen.note2TextField.text ?? "") ?? 0.0)
        subjectUpdated.notes.append(Double(editCellScreen.note3TextField.text ?? "") ?? 0.0)
        subjectUpdated.notes.append(Double(editCellScreen.note4TextField.text ?? "") ?? 0.0)

        
//            student: editCellScreen.studentTextField.text,
//            subject: editCellScreen.subjectNameTextField.text,
//            note1: Double(editCellScreen.note1TextField.text ?? ""),
//            note2: Double(editCellScreen.note2TextField.text ?? ""),
//            note3: Double(editCellScreen.note3TextField.text ?? ""),
//            note4: Double(editCellScreen.note4TextField.text ?? ""),
//            media: editCellScreen.subjects?.media)
        
        let listViewController = ListViewController()
        listViewController.getSubject(subjects: subjectUpdated)
        self.navigationController?.pushViewController(listViewController, animated: true)
    }
}
