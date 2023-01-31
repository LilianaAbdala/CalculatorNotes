//
//  EditCellViewController.swift
//  CalculatorNotes
//
//  Created by Liliana Porto Abdala on 26/01/23.
//


import UIKit
class UpdateCellViewController: UIViewController {
    let updateCellScreen = UpdateCellScreenView()
    
    override func loadView() {
        view = updateCellScreen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateCellScreen.buttonUpdate.addTarget(self, action: #selector(updateData), for: .touchUpInside)
    }
    
    func getSubject(subjects: Subject) {
        updateCellScreen.subject = subjects
    }
    
    @objc func updateData() {
        let subjectUpdated = Subject()
        subjectUpdated.student = updateCellScreen.studentTextField.text
        subjectUpdated.name = updateCellScreen.subjectNameTextField.text
        subjectUpdated.notes.append(Double(updateCellScreen.note1TextField.text ?? "") ?? 0.0)
        subjectUpdated.notes.append(Double(updateCellScreen.note2TextField.text ?? "") ?? 0.0)
        subjectUpdated.notes.append(Double(updateCellScreen.note3TextField.text ?? "") ?? 0.0)
        subjectUpdated.notes.append(Double(updateCellScreen.note4TextField.text ?? "") ?? 0.0)

        let listViewController = ListViewController()
        listViewController.getSubject(subjects: subjectUpdated)
        self.navigationController?.pushViewController(listViewController, animated: true)
    }
}
