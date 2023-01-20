//
//  MediaViewController.swift
//  CalculatorNotes
//
//  Created by Liliana Porto Abdala on 16/01/23.
//

import UIKit

class ListViewController: UIViewController {
    
    let listScreenView = ListScreenView()
    var subjects: [Subject]?
    
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
        if let count = self.subjects?.count {
            return count
        }
        
        return 30
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: listScreenView.cellId, for: indexPath) as! ListTableViewCell
        
        if let item = self.subjects?[indexPath.item] {
            cell.subject = item
        }
        
        return cell
    }
    
   /* func tableView(_ tableView: UITableView, layout tableViewLayout: UITableViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.width - 20, height: 180)
    }*/
    
    func tableView(_ tableView: UITableView, didSelectItemAt indexPath: IndexPath) {
        let detailsViewController = DetailsViewController()
        if let subjects = self.subjects {
            detailsViewController.setSubject(subject: subjects[indexPath.item])
        }
        self.navigationController?.pushViewController(detailsViewController, animated: true)
    }
}
