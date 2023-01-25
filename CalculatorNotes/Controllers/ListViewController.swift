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
    
    override func loadView() {
        view = listScreenView
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        listScreenView.tableView.delegate = self
        listScreenView.tableView.dataSource = self
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
        //if let subjects = self.subjects {
        detailsViewController.setSubject(subject: (subjects[indexPath.item]))
        self.navigationController?.pushViewController(detailsViewController, animated: true)
        
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if (editingStyle == .delete){
            subjects.remove(at: indexPath.item)
            tableView.deleteRows(at: [indexPath], with: .automatic)
        }
    }
    func updateSubject(subject: Subject) {
        if let index = subjects.firstIndex(where: { $0.id == subject.id }) {
            subjects[index] = subject
            //   defaults.synchronize()
        }
    }
}
