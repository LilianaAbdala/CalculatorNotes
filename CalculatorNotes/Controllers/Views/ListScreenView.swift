//
//  ListScreenView.swift
//  CalculatorNotes
//
//  Created by Liliana Porto Abdala on 16/01/23.
//

import UIKit

class ListScreenView: BaseView {
    
    let cellId = "cellId"
    
    lazy var tableView: UITableView = {
        let tableView = UITableView(frame: bounds)
        tableView.register(ListTableViewCell.self, forCellReuseIdentifier: cellId)
        return tableView
    }()
    
    override func addSubviews() {
        backgroundColor = UIColor.init(rgb: 0xe5e5e5)
        addSubview(tableView)
    
    }
    
    override func setConstraints() {
        tableView.anchor(top: self.safeAreaLayoutGuide.topAnchor, leading: self.safeAreaLayoutGuide.leadingAnchor, bottom: self.safeAreaLayoutGuide.bottomAnchor, trailing: self.safeAreaLayoutGuide.trailingAnchor, padding: .init(top: 0, left: 0, bottom: 0, right: 0), size: .init(width: bounds.width, height: bounds.height))
    }
}
