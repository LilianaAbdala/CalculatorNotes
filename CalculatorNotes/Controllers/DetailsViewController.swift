//
//  MediaViewController.swift
//  CalculatorNotes
//
//  Created by Liliana Porto Abdala on 16/01/23.
//

import UIKit

class DetailsViewController: UIViewController {

    let detailsScreenView = DetailsScreenView()
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = view.bounds
        gradientLayer.colors = [UIColor.orange.cgColor,UIColor.systemBlue.cgColor, UIColor.systemYellow.cgColor]
        gradientLayer.startPoint = CGPoint(x: 0.0, y: 0.0)
        gradientLayer.endPoint = CGPoint(x: 1.1, y: 1.1)
        
        view.layer.addSublayer(gradientLayer)
    }
    
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

