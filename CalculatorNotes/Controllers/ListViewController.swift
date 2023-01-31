//
//  MediaViewController.swift
//  CalculatorNotes
//
//  Created by Liliana Porto Abdala on 16/01/23.
//

import UIKit

class ListViewController: UIViewController {
    
    let listScreenView = ListScreenView()
    let listTableViewCell = ListTableViewCell()
    var subjects: [Subject] = []
    var subjectCell: Subject?
    
    override func loadView() {
        view = listScreenView
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        listScreenView.tableView.delegate = self
        listScreenView.tableView.dataSource = self
        retrieveUserDefault()
    }
    
    @objc func longPressed() {
        let updateCellViewController = UpdateCellViewController()
        
        if let subjectCell = subjectCell {
            updateCellViewController.getSubject(subjects: subjectCell)
        }
        self.navigationController?.pushViewController(updateCellViewController, animated: true)
    }
    
    func getDataCell(subjects: Subject) {
        self.subjectCell = subjects
    }
    
    func getSubject(subjects: Subject) {
        self.subjects.append(subjects)
        StudentMock.studentMock.sub.append(subjects)
        listScreenView.tableView.reloadData()
    }
    
    func retrieveUserDefault() {
        if let data = UserDefaults.standard.object(forKey: "notas") as? Data,
           let json = try? JSONDecoder().decode(Array<Subject>.self, from: data) {
            self.subjects = json
        }
    }
    
    func setSubjects(subjects: [Subject]) {
        self.subjects = subjects
    }
}

extension ListViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return subjects.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: listScreenView.cellId, for: indexPath) as! ListTableViewCell
        cell.subject = subjects[indexPath.item]
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let detailsViewController = DetailsViewController()
        
        detailsViewController.setSubject(subject: (subjects[indexPath.item]))
        self.navigationController?.pushViewController(detailsViewController, animated: true)
        
    }
    
    func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {
        subjects.swapAt(sourceIndexPath.row, destinationIndexPath.row)
    }
    
    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        let deleteAction = UIContextualAction(style: .destructive, title: "") {
            (action, view, completionHandler) in
            self.subjects.remove(at: indexPath.row)
            tableView.beginUpdates()
            tableView.deleteRows(at: [indexPath], with: .automatic)
        }
        
        let favoriteAction = UIContextualAction(style: .normal, title: "") {
            (_, _, _) in
            
            print("Student added to favorite list")
        }
        
        deleteAction.image = UIImage(systemName: "trash")
        favoriteAction.image = UIImage(systemName: "heart")
        
        favoriteAction.backgroundColor = UIColor.systemPurple
        
        return UISwipeActionsConfiguration(actions: [favoriteAction, deleteAction])
        
    }
}

