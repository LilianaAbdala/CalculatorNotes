//
//  MenuViewController.swift
//  CalculatorNotes
//
//  Created by Liliana Porto Abdala on 13/01/23.
//

import UIKit

class HomeViewController: UIViewController {
    
    var homeScreenView = HomeScreenView()
    var notes: [Notes]?
    
    override func loadView(){
        view = homeScreenView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        homeScreenView.buttonCadastro.addTarget(self, action: #selector(navigateToRegister), for: .touchUpInside)
        homeScreenView.buttonAverage.addTarget(self, action: #selector(navigateToAverage), for: .touchUpInside)

        // Do any additional setup after loading the view.
    }
    
    @objc func navigateToRegister() {
        let registerViewController = RegisterViewController()
        self.navigationController?.pushViewController(registerViewController, animated: true)
    }
    
    @objc func navigateToAverage() {
        let listViewController = ListViewController()
        self.navigationController?.pushViewController(listViewController, animated: true)
    }
}
