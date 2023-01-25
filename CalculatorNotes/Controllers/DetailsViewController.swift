//
//  MediaViewController.swift
//  CalculatorNotes
//
//  Created by Liliana Porto Abdala on 16/01/23.
//

import UIKit

class DetailsViewController: UIViewController {
    
    let detailsScreenView = DetailsScreenView()
    
    override func loadView() {
        view = detailsScreenView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func setSubject(subject: Subject) {
        detailsScreenView.subject = subject
    }
    
}

