//
//  MenuViewController.swift
//  CalculatorNotes
//
//  Created by Liliana Porto Abdala on 13/01/23.
//

import UIKit

class HomeViewController: UIViewController {
    
    var homeScreenView = HomeScreenView()
    var subject: Subject?
    
    override func loadView(){
        view = homeScreenView
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        homeScreenView.buttonRegister.addTarget(self, action: #selector(navigateToRegister), for: .touchUpInside)
        homeScreenView.buttonList.addTarget(self, action: #selector(navigateToList), for: .touchUpInside)
    }
    
    func getSubject(subject: Subject) {
        self.subject = subject
    }
    
    @objc func navigateToRegister() {
        let registerViewController = RegisterViewController()
        self.navigationController?.pushViewController(registerViewController, animated: true)
    }
    
    @objc func navigateToList() {
        let ListViewController = ListViewController()
            ListViewController.getSubject(subjects: subject!)
    
        self.navigationController?.pushViewController(ListViewController, animated: true)
    }
}
